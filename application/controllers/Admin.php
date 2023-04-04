<?php

use Illuminate\Auth\Events\Login;

defined('BASEPATH') or exit('No direct script access allowed');

class Admin extends CI_Controller
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
        $data['judul'] = 'Dashboard';
        $this->load->view('template/header', $data);
        $this->load->view('dashboard');
        $this->load->view('template/footer');
    }
}
