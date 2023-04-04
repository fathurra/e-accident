<?php

use Illuminate\Auth\Events\Login;

defined('BASEPATH') or exit('No direct script access allowed');

class Lik extends CI_Controller
{
    function __construct()
    {
        parent::__construct();
        //cek login
        if ($this->session->userdata('status') != "login") {
            redirect(base_url() . 'auth/login?pesan=belumlogin');
        }
    }
    public function index()
    {
        if ($this->session->userdata('role') == 0) {
            $data['judul'] = 'Laporan Investigasi Kecelakaan';
            $data['lik'] = $this->m_crud->get_data('tb_lik')->result();
            $this->load->view('template/header', $data);
            $this->load->view('investigasi/lik_data');
            $this->load->view('template/footer');
        } else {
            $data['judul'] = 'Laporan Investigasi Kecelakaan';
            $data['lik'] = $this->db->query("SELECT * from tb_lik where admin_nama ='" . $_SESSION['nama'] . "'")->result();
            $this->load->view('template/header', $data);
            $this->load->view('investigasi/lik_data');
            $this->load->view('template/footer');
        }
    }
    public function lik_add()
    {
        $data['judul'] = 'Input Laporan Investigasi Kecelakaan';
        $this->load->view('template/header', $data);
        $this->load->view('investigasi/lik_data_tambah');
        $this->load->view('template/footer');
    }
    public function lik_add_act()
    {
        $tanggal = $this->input->post('tanggal');
        $waktu = $this->input->post('waktu');
        $nama = $this->input->post('nama');
        $nik = $this->input->post('nik');
        $departemen = $this->input->post('departemen');
        $jabatan = $this->input->post('jabatan');
        $kat_karyawan = $this->input->post('kat_karyawan');
        $status_kecelakaan = $this->input->post('status_kecelakaan');
        $kerja_shift = $this->input->post('kerja_shift');
        $usia = $this->input->post('usia');
        $masuk_kerja = $this->input->post('masuk_kerja');
        $jenis_kelamin = $this->input->post('jenis_kelamin');
        $bagian_terluka = $this->input->post('bagian_terluka');
        $penanganan = $this->input->post('penanganan');
        $perawatan = $this->input->post('perawatan');
        $kond_tdk_aman = $this->input->post('kond_tdk_aman');
        $tind_tdk_aman = $this->input->post('tind_tdk_aman');
        $men = $this->input->post('men');
        $material = $this->input->post('material');
        $method = $this->input->post('method');
        $machine = $this->input->post('machine');
        $tind_perbaikan = $this->input->post('tind_perbaikan');
        $pic = $this->input->post('pic');
        $target = $this->input->post('target');
        $admin_nama = $_SESSION['nama'];

        $this->form_validation->set_rules('nama', 'Nama', 'required');
        $this->form_validation->set_rules('nik', 'NIK', 'required');

        if ($this->form_validation->run() != false) {
            $data = array(
                'tanggal' => $tanggal,
                'waktu' => $waktu,
                'nama' => $nama,
                'nik' => $nik,
                'departemen' => $departemen,
                'jabatan' => $jabatan,
                'kat_karyawan' => $kat_karyawan,
                'status_kecelakaan' => $status_kecelakaan,
                'kerja_shift' => $kerja_shift,
                'usia' => $usia,
                'masuk_kerja' => $masuk_kerja,
                'jenis_kelamin' => $jenis_kelamin,
                'bagian_terluka' => $bagian_terluka,
                'penanganan' => $penanganan,
                'perawatan' => $perawatan,
                'kond_tdk_aman' => $kond_tdk_aman,
                'tind_tdk_aman' => $tind_tdk_aman,
                'men' => $men,
                'material' => $material,
                'method' => $method,
                'machine' => $machine,
                'tind_perbaikan' => $tind_perbaikan,
                'pic' => $pic,
                'target' => $target,
                'admin_nama' => $admin_nama
            );

            $this->m_crud->insert_data($data, 'tb_lik');
            redirect(base_url() . 'lik/index?pesan=tambah');
        } else {
            $data['judul'] = 'Input Laporan Investigasi Kecelakaan';
            $this->load->view('template/header', $data);
            $this->load->view('investigasi/lik_data_tambah');
            $this->load->view('template/footer');
        }
    }
    public function lik_data_detail($id)
    {
        $where = array(
            'id_lik' => $id
        );
        $data['lik'] = $this->m_crud->edit_data($where, 'tb_lik')->result();
        $data['judul'] = 'Detail Laporan Investigasi';
        $this->load->view('template/header', $data);
        $this->load->view('investigasi/lik_data_detail', $data);
        $this->load->view('template/footer');
    }
    public function lik_data_edit($id)
    {
        $where = array(
            'id_lik' => $id
        );
        $data['lik'] = $this->m_crud->edit_data($where, 'tb_lik')->result();
        $data['judul'] = 'Edit Laporan Investigasi';
        $this->load->view('template/header', $data);
        $this->load->view('investigasi/lik_data_edit', $data);
        $this->load->view('template/footer');
    }
    public function lik_data_update()
    {
        $id = $this->input->post('id_lik');
        $tanggal = $this->input->post('tanggal');
        $waktu = $this->input->post('waktu');
        $nama = $this->input->post('nama');
        $nik = $this->input->post('nik');
        $departemen = $this->input->post('departemen');
        $jabatan = $this->input->post('jabatan');
        $kat_karyawan = $this->input->post('kat_karyawan');
        $status_kecelakaan = $this->input->post('status_kecelakaan');
        $kerja_shift = $this->input->post('kerja_shift');
        $usia = $this->input->post('usia');
        $masuk_kerja = $this->input->post('masuk_kerja');
        $jenis_kelamin = $this->input->post('jenis_kelamin');
        $bagian_terluka = $this->input->post('bagian_terluka');
        $penanganan = $this->input->post('penanganan');
        $perawatan = $this->input->post('perawatan');
        $kond_tdk_aman = $this->input->post('kond_tdk_aman');
        $tind_tdk_aman = $this->input->post('tind_tdk_aman');
        $men = $this->input->post('men');
        $material = $this->input->post('material');
        $method = $this->input->post('method');
        $machine = $this->input->post('machine');
        $tind_perbaikan = $this->input->post('tind_perbaikan');
        $pic = $this->input->post('pic');
        $target = $this->input->post('target');

        $this->form_validation->set_rules('nama', 'Nama', 'required');
        $this->form_validation->set_rules('nik', 'NIK', 'required');

        if ($this->form_validation->run() != false) {
            $where = array(
                'id_lik' => $id
            );
            $data = array(
                'tanggal' => $tanggal,
                'waktu' => $waktu,
                'nama' => $nama,
                'nik' => $nik,
                'departemen' => $departemen,
                'jabatan' => $jabatan,
                'kat_karyawan' => $kat_karyawan,
                'status_kecelakaan' => $status_kecelakaan,
                'kerja_shift' => $kerja_shift,
                'usia' => $usia,
                'masuk_kerja' => $masuk_kerja,
                'jenis_kelamin' => $jenis_kelamin,
                'bagian_terluka' => $bagian_terluka,
                'penanganan' => $penanganan,
                'perawatan' => $perawatan,
                'kond_tdk_aman' => $kond_tdk_aman,
                'tind_tdk_aman' => $tind_tdk_aman,
                'men' => $men,
                'material' => $material,
                'method' => $method,
                'machine' => $machine,
                'tind_perbaikan' => $tind_perbaikan,
                'pic' => $pic,
                'target' => $target
            );

            $this->m_crud->update_data($where, $data, 'tb_lik');
            redirect(base_url() . 'lik/index?pesan=edit');
        } else {
            $where = array(
                'id_lik' => $id
            );
            $data['judul'] = 'Edit Laporan Investigasi';
            $this->load->view('template/header', $data);
            $this->load->view('investigasi/lik_data_edit');
            $this->load->view('template/footer');
        }
    }
    public function lik_data_print($id)
    {
        $where = array(
            'id_lik' => $id
        );
        $data['lik'] = $this->m_crud->edit_data($where, 'tb_lik')->result();
        $this->load->view('investigasi/print', $data);
    }
    public function lik_data_delete($id)
    {
        $where = array(
            'id_lik' => $id
        );
        $this->m_crud->delete_data($where, 'tb_lik');
        redirect(base_url() . 'lik/index?pesan=hapus');
    }
}
