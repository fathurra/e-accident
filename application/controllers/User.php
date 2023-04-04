<?php

use Illuminate\Auth\Events\Login;

defined('BASEPATH') or exit('No direct script access allowed');

class User extends CI_Controller
{
    public function index()
    {
        $data['judul'] = 'Data User';
        $data['user'] = $this->m_crud->get_data('tb_user')->result();
        $this->load->view('template/header', $data);
        $this->load->view('user/user_data');
        $this->load->view('template/footer');
    }
    public function user_add()
    {
        $data['judul'] = 'Data User';
        $data['dept'] = $this->m_crud->get_data('tb_dept')->result();
        $this->load->view('template/header', $data);
        $this->load->view('user/user_data_add');
        $this->load->view('template/footer');
    }
    public function user_add_act()
    {
        $nama = $this->input->post('nama');
        $nik = $this->input->post('nik');
        $dept = $this->input->post('dept');
        $jabatan = $this->input->post('jabatan');
        $this->form_validation->set_rules('nama', 'Nama', 'required');
        $this->form_validation->set_rules('nik', 'NIK', 'required');

        if ($this->form_validation->run() != false) {
            $data = array(
                'nama' => $nama,
                'nik' => $nik,
                'dept' => $dept,
                'jabatan' => $jabatan
            );

            $this->m_crud->insert_data($data, 'tb_user');
            redirect(base_url() . 'user/index?pesan=tambah');
        } else {
            $data['judul'] = 'Tambah Dept';
            $this->load->view('template/header', $data);
            $this->load->view('dept/use_data_add');
            $this->load->view('template/footer');
        }
    }
    public function user_edit($id)
    {
        $where = array(
            'id' => $id
        );
        $data['user'] = $this->m_crud->edit_data($where, 'tb_user')->result();
        $data['dept'] = $this->m_crud->get_data('tb_dept')->result();
        $data['judul'] = 'Edit User';
        $this->load->view('template/header', $data);
        $this->load->view('user/user_data_edit', $data);
        $this->load->view('template/footer');
    }
    public function user_update()
    {
    }
}
