<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Pegawai_model extends CI_Model {

    public function get_all()
    {
        $this->db->select('pegawai.*, pegawai_pribadi.tempat_lahir, pegawai_pribadi.tanggal_lahir, pegawai_pribadi.status_kawin, pegawai_pribadi.agama, pegawai_pribadi.alamat, pegawai_pribadi.no_telp, pegawai_drh.tingkat_pendidikan, pegawai_drh.jurusan, pegawai_drh.tahun_lulus, pegawai_drh.alumni');
        $this->db->from('pegawai');
        $this->db->join('pegawai_pribadi', 'pegawai_pribadi.nip = pegawai.nip', 'left');
        $this->db->join('pegawai_drh', 'pegawai_drh.nip = pegawai.nip', 'left');
        $this->db->order_by('pegawai.nama', 'ASC');
        return $this->db->get()->result();
    }

    public function get_by_nip($nip)
    {
        $this->db->select('pegawai.*, pegawai_pribadi.tempat_lahir, pegawai_pribadi.tanggal_lahir, pegawai_pribadi.status_kawin, pegawai_pribadi.agama, pegawai_pribadi.alamat, pegawai_pribadi.no_telp, pegawai_drh.tingkat_pendidikan, pegawai_drh.jurusan, pegawai_drh.tahun_lulus, pegawai_drh.alumni');
        $this->db->from('pegawai');
        $this->db->join('pegawai_pribadi', 'pegawai_pribadi.nip = pegawai.nip', 'left');
        $this->db->join('pegawai_drh', 'pegawai_drh.nip = pegawai.nip', 'left');
        $this->db->where('pegawai.nip', $nip);
        return $this->db->get()->row();
    }

    public function insert($pegawai, $pribadi, $drh)
    {
        $this->db->trans_start();

        $this->db->insert('pegawai', $pegawai);
        $this->db->insert('pegawai_pribadi', $pribadi);
        $this->db->insert('pegawai_drh', $drh);

        $this->db->trans_complete();
        return $this->db->trans_status();
    }

    public function update($nip, $pegawai, $pribadi, $drh)
    {
        $this->db->trans_start();

        $this->db->where('nip', $nip);
        $this->db->update('pegawai', $pegawai);

        $this->db->where('nip', $nip);
        $this->db->update('pegawai_pribadi', $pribadi);

        $this->db->where('nip', $nip);
        $this->db->update('pegawai_drh', $drh);

        $this->db->trans_complete();
        return $this->db->trans_status();
    }

    public function delete($nip)
    {
        $this->db->trans_start();

        $this->db->where('nip', $nip);
        $this->db->delete('pegawai_drh');

        $this->db->where('nip', $nip);
        $this->db->delete('pegawai_pribadi');

        $this->db->where('nip', $nip);
        $this->db->delete('pegawai');

        $this->db->trans_complete();
        return $this->db->trans_status();
    }

    public function count_all()
    {
        return $this->db->count_all('pegawai');
    }
}
