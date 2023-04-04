<?php

use Illuminate\Auth\Events\Login;

defined('BASEPATH') or exit('No direct script access allowed');

class Auth extends CI_Controller
{
    function __construct()
    {
        parent::__construct();
        $this->load->model('m_crud');
    }
    public function index()
    {
        $this->load->view('login');
    }
    function login()
    {
        $nik = $this->input->post('nik');
        $password = $this->input->post('password');
        $this->form_validation->set_rules('nik', 'Nik', 'trim|required');
        $this->form_validation->set_rules('password', 'Password', 'trim|required');

        if ($this->form_validation->run() != false) {
            $where = array(
                'nik' => $nik,
                'password' => sha1($password)
            );

            $data = $this->m_crud->edit_data($where, 'admin');
            $d = $this->m_crud->edit_data($where, 'admin')->row();

            $cek = $data->num_rows();
            if ($cek > 0) {
                $session = array(
                    'id' => $d->id,
                    'nik' => $d->nik,
                    'nama' => $d->nama,
                    'dept' => $d->dept,
                    'role' => $d->role,
                    'status' => 'login'
                );
                $this->session->set_userdata($session);
                redirect(base_url() . 'admin');
            } else {
                redirect(base_url() . 'auth/login?pesan=gagal');
            }
        } else {
            $this->load->view('login');
        }
    }
    public function logout()
    {
        $this->session->sess_destroy();
        redirect(base_url() . 'auth?pesan=logout');
    }
}
