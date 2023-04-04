<?php

use Illuminate\Auth\Events\Login;

defined('BASEPATH') or exit('No direct script access allowed');

class Rs extends CI_Controller
{
    public function index()
    {
        $data['judul'] = 'Data RS. Trauma Center';
        $data['rs'] = $this->m_crud->get_data('tb_rs_list')->result();
        $this->load->view('template/header', $data);
        $this->load->view('rs/rs_data');
        $this->load->view('template/footer');
    }
}