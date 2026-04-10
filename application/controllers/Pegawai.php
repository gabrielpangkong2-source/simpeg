<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Pegawai extends CI_Controller {

    public function __construct()
    {
        parent::__construct();
        $this->load->model('Pegawai_model');
    }

    public function index()
    {
        $data['title'] = 'Data Pegawai';
        $data['pegawai'] = $this->Pegawai_model->get_all();

        $this->load->view('templates/header', $data);
        $this->load->view('pegawai/index', $data);
        $this->load->view('templates/footer');
    }

    public function tambah()
    {
        $data['title'] = 'Tambah Pegawai';

        $this->load->view('templates/header', $data);
        $this->load->view('pegawai/tambah', $data);
        $this->load->view('templates/footer');
    }

    public function simpan()
    {
        $nip = $this->input->post('nip', TRUE);

        $pegawai = array(
            'nip'                 => $nip,
            'nama'                => $this->input->post('nama', TRUE),
            'gol_ruang_cpns'      => $this->input->post('gol_ruang_cpns', TRUE),
            'tmt_cpns'            => $this->input->post('tmt_cpns', TRUE) ?: NULL,
            'pangkat_terakhir'    => $this->input->post('pangkat_terakhir', TRUE),
            'jenis_kelamin'       => $this->input->post('jenis_kelamin', TRUE),
            'jabatan'             => $this->input->post('jabatan', TRUE),
            'eselon'              => $this->input->post('eselon', TRUE),
            'diklat_penjenjangan' => $this->input->post('diklat_penjenjangan', TRUE),
            'instansi_pembayar'   => $this->input->post('instansi_pembayar', TRUE),
            'keterangan'          => $this->input->post('keterangan', TRUE),
            'role'                => '',
            'password'            => '',
        );

        $pribadi = array(
            'nip'            => $nip,
            'tempat_lahir'   => $this->input->post('tempat_lahir', TRUE),
            'tanggal_lahir'  => $this->input->post('tanggal_lahir', TRUE) ?: NULL,
            'status_kawin'   => $this->input->post('status_kawin', TRUE),
            'agama'          => $this->input->post('agama', TRUE),
            'alamat'         => $this->input->post('alamat', TRUE),
            'no_telp'        => $this->input->post('no_telp', TRUE),
        );

        $drh = array(
            'nip'                => $nip,
            'tingkat_pendidikan' => $this->input->post('tingkat_pendidikan', TRUE),
            'jurusan'            => $this->input->post('jurusan', TRUE),
            'tahun_lulus'        => $this->input->post('tahun_lulus', TRUE) ?: NULL,
            'alumni'             => $this->input->post('alumni', TRUE),
        );

        $this->Pegawai_model->insert($pegawai, $pribadi, $drh);
        $this->session->set_flashdata('success', 'Data pegawai berhasil ditambahkan!');
        redirect('pegawai');
    }

    public function edit($nip)
    {
        $data['title'] = 'Edit Pegawai';
        $data['pegawai'] = $this->Pegawai_model->get_by_nip($nip);

        if (empty($data['pegawai'])) {
            show_404();
        }

        $this->load->view('templates/header', $data);
        $this->load->view('pegawai/edit', $data);
        $this->load->view('templates/footer');
    }

    public function update($nip)
    {
        $pegawai = array(
            'nama'                => $this->input->post('nama', TRUE),
            'gol_ruang_cpns'      => $this->input->post('gol_ruang_cpns', TRUE),
            'tmt_cpns'            => $this->input->post('tmt_cpns', TRUE) ?: NULL,
            'pangkat_terakhir'    => $this->input->post('pangkat_terakhir', TRUE),
            'jenis_kelamin'       => $this->input->post('jenis_kelamin', TRUE),
            'jabatan'             => $this->input->post('jabatan', TRUE),
            'eselon'              => $this->input->post('eselon', TRUE),
            'diklat_penjenjangan' => $this->input->post('diklat_penjenjangan', TRUE),
            'instansi_pembayar'   => $this->input->post('instansi_pembayar', TRUE),
            'keterangan'          => $this->input->post('keterangan', TRUE),
        );

        $pribadi = array(
            'tempat_lahir'   => $this->input->post('tempat_lahir', TRUE),
            'tanggal_lahir'  => $this->input->post('tanggal_lahir', TRUE) ?: NULL,
            'status_kawin'   => $this->input->post('status_kawin', TRUE),
            'agama'          => $this->input->post('agama', TRUE),
            'alamat'         => $this->input->post('alamat', TRUE),
            'no_telp'        => $this->input->post('no_telp', TRUE),
        );

        $drh = array(
            'tingkat_pendidikan' => $this->input->post('tingkat_pendidikan', TRUE),
            'jurusan'            => $this->input->post('jurusan', TRUE),
            'tahun_lulus'        => $this->input->post('tahun_lulus', TRUE) ?: NULL,
            'alumni'             => $this->input->post('alumni', TRUE),
        );

        $this->Pegawai_model->update($nip, $pegawai, $pribadi, $drh);
        $this->session->set_flashdata('success', 'Data pegawai berhasil diperbarui!');
        redirect('pegawai');
    }

    public function hapus($nip)
    {
        $pegawai = $this->Pegawai_model->get_by_nip($nip);
        if (empty($pegawai)) {
            show_404();
        }

        $this->Pegawai_model->delete($nip);
        $this->session->set_flashdata('success', 'Data pegawai berhasil dihapus!');
        redirect('pegawai');
    }

    public function detail($nip)
    {
        $data['title'] = 'Detail Pegawai';
        $data['pegawai'] = $this->Pegawai_model->get_by_nip($nip);

        if (empty($data['pegawai'])) {
            show_404();
        }

        $this->load->view('templates/header', $data);
        $this->load->view('pegawai/detail', $data);
        $this->load->view('templates/footer');
    }
}
