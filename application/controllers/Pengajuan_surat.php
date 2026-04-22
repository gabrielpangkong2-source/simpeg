<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Pengajuan_surat extends CI_Controller {

    public function __construct()
    {
        parent::__construct();
        $this->load->model('Pegawai_model');
        $this->load->model('Pengajuan_surat_model');

        if (!$this->session->userdata('logged_in') || $this->session->userdata('role') !== 'pegawai') {
            redirect('auth');
        }
    }

    public function index()
    {
        redirect('pengajuan_surat/surat_keterangan_sakit');
    }

    public function surat_keterangan_sakit()
    {
        $nip = $this->session->userdata('nip');
        $data['title'] = 'Surat Keterangan Sakit';
        $data['pegawai'] = $this->Pegawai_model->get_by_nip($nip);

        if (empty($data['pegawai'])) {
            show_404();
        }

        $this->load->view('templates/header_pegawai', $data);
        $this->load->view('pengajuan_surat/surat_keterangan_sakit', $data);
        $this->load->view('templates/footer_pegawai');
    }

    public function simpan_surat_keterangan_sakit()
    {
        $nip = $this->session->userdata('nip');
        $jenis = trim((string) $this->input->post('jenis', TRUE));
        $tanggal_surat = trim((string) $this->input->post('tanggal_surat', TRUE));
        $tanggal_izin = trim((string) $this->input->post('tanggal_izin', TRUE));
        $alasan = trim((string) $this->input->post('alasan', TRUE));
        $penandatangan = trim((string) $this->input->post('penandatangan', TRUE));
        $jenis_valid = array('pagi', 'sore', '1 hari');

        if (
            empty($nip) ||
            !in_array($jenis, $jenis_valid, TRUE) ||
            !$this->is_valid_date($tanggal_surat) ||
            !$this->is_valid_date($tanggal_izin) ||
            $alasan === '' ||
            $penandatangan === ''
        ) {
            $this->session->set_flashdata('error', 'Semua field pengajuan surat wajib diisi dengan benar.');
            redirect('pengajuan_surat/surat_keterangan_sakit');
            return;
        }

        $this->Pengajuan_surat_model->insert_surat_keterangan_sakit(array(
            'nip' => $nip,
            'jenis' => $jenis,
            'tanggal_surat' => $tanggal_surat,
            'tanggal_izin' => $tanggal_izin,
            'alasan' => $alasan,
            'penandatangan' => $penandatangan,
        ));

        $this->session->set_flashdata('success', 'Pengajuan Surat Keterangan Sakit berhasil dikirim.');
        redirect('pengajuan_surat/surat_keterangan_sakit');
    }

    private function is_valid_date($date)
    {
        $date_time = DateTime::createFromFormat('Y-m-d', $date);

        return $date_time && $date_time->format('Y-m-d') === $date;
    }
}
