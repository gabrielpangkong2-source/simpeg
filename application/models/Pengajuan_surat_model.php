<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Pengajuan_surat_model extends CI_Model {

    public function insert_surat_keterangan_sakit($data)
    {
        return $this->db->insert('pengajuan_surat_sakit', $data);
    }

    public function get_all_surat_masuk()
    {
        $this->db->select('pengajuan_surat_sakit.*, pegawai.nama');
        $this->db->from('pengajuan_surat_sakit');
        $this->db->join('pegawai', 'pegawai.nip = pengajuan_surat_sakit.nip', 'left');
        $this->db->order_by('pengajuan_surat_sakit.created_at', 'DESC');

        return $this->db->get()->result();
    }

    public function get_surat_masuk_by_id($id)
    {
        $this->db->select('pengajuan_surat_sakit.*, pegawai.nama');
        $this->db->from('pengajuan_surat_sakit');
        $this->db->join('pegawai', 'pegawai.nip = pengajuan_surat_sakit.nip', 'left');
        $this->db->where('pengajuan_surat_sakit.id', $id);

        return $this->db->get()->row();
    }

    public function update_nomor_surat($id, $nomor_surat)
    {
        $this->db->where('id', $id);

        return $this->db->update('pengajuan_surat_sakit', array(
            'nomor_surat' => $nomor_surat,
            'nomor_surat_at' => date('Y-m-d H:i:s'),
        ));
    }
}
