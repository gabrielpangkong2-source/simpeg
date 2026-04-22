<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Surat extends CI_Controller {

    public function __construct()
    {
        parent::__construct();
        $this->load->model('Pengajuan_surat_model');

        if (
            !$this->session->userdata('logged_in') ||
            in_array($this->session->userdata('role'), array('pegawai', 'kasubag'), TRUE)
        ) {
            redirect('auth');
        }
    }

    public function index()
    {
        $data['title'] = 'Surat';
        $data['surat_masuk'] = $this->Pengajuan_surat_model->get_all_surat_masuk();

        $this->load->view('templates/header', $data);
        $this->load->view('surat/index', $data);
        $this->load->view('templates/footer');
    }

    public function nomor($id)
    {
        $data['title'] = 'Beri Nomor Surat';
        $data['surat'] = $this->Pengajuan_surat_model->get_surat_masuk_by_id($id);

        if (empty($data['surat'])) {
            show_404();
        }

        $this->load->view('templates/header', $data);
        $this->load->view('surat/nomor', $data);
        $this->load->view('templates/footer');
    }

    public function update_nomor($id)
    {
        $surat = $this->Pengajuan_surat_model->get_surat_masuk_by_id($id);

        if (empty($surat)) {
            show_404();
        }

        $nomor_surat = trim((string) $this->input->post('nomor_surat', TRUE));

        if ($nomor_surat === '') {
            $this->session->set_flashdata('error', 'Nomor surat wajib diisi.');
            redirect('surat/nomor/' . $id);
            return;
        }

        $this->Pengajuan_surat_model->update_nomor_surat($id, $nomor_surat);
        $this->session->set_flashdata('success', 'Nomor surat berhasil disimpan.');
        redirect('surat');
    }
}
