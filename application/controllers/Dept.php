<?php

use Illuminate\Auth\Events\Login;

defined('BASEPATH') or exit('No direct script access allowed');

class Dept extends CI_Controller
{
    public function index()
    {
        $data['judul'] = 'Data Departement';
        $data['dept'] = $this->m_crud->get_data('tb_dept')->result();
        $this->load->view('template/header', $data);
        $this->load->view('dept/dept_data');
        $this->load->view('template/footer');
    }
    public function dept_add()
    {
        $data['judul'] = 'Tambah Dept';
        $this->load->view('template/header', $data);
        $this->load->view('dept/dept_data_add');
        $this->load->view('template/footer');
    }
    public function dept_add_act()
    {
        $dept = $this->input->post('nama_dept');
        $this->form_validation->set_rules('nama_dept', 'Nama Departement', 'required');

        if ($this->form_validation->run() != false) {
            $data = array(
                'nama_dept' => $dept
            );

            $this->m_crud->insert_data($data, 'tb_dept');
            redirect(base_url() . 'dept/index?pesan=tambah');
        } else {
            $data['judul'] = 'Tambah Dept';
            $this->load->view('template/header', $data);
            $this->load->view('dept/dept_data_add');
            $this->load->view('template/footer');
        }
    }
    public function dept_edit($id)
    {
        $where = array(
            'id_dept' => $id
        );
        $data['dept'] = $this->m_crud->edit_data($where, 'tb_dept')->result();
        $data['judul'] = 'Edit Dept';
        $this->load->view('template/header', $data);
        $this->load->view('dept/dept_data_edit', $data);
        $this->load->view('template/footer');
    }
    public function dept_update()
    {
        $id = $this->input->post('id_dept');
        $dept = $this->input->post('nama_dept');
        $this->form_validation->set_rules('nama_dept', 'Nama Departement', 'required');

        if ($this->form_validation->run() != false) {
            $where = array(
                'id_dept' => $id
            );
            $data = array(
                'nama_dept' => $dept
            );

            $this->m_crud->update_data($where, $data, 'tb_dept');
            redirect(base_url() . 'dept/index?pesan=edit');
        } else {
            $where = array(
                'id_dept' => $id
            );
            $data['dept'] = $this->m_crud->edit_data($where, 'tb_dept')->result();
            $data['judul'] = 'Edit Dept';
            $this->load->view('template/header', $data);
            $this->load->view('dept/dept_data_edit', $data);
            $this->load->view('template/footer');
        }
    }
    public function dept_delete($id)
    {
        $where = array(
            'id_dept' => $id
        );
        $this->m_crud->delete_data($where, 'tb_dept');
        redirect(base_url() . 'dept/index?pesan=hapus');
    }
}
