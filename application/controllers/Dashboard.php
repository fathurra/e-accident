<?php

use Illuminate\Auth\Events\Login;
use phpDocumentor\Reflection\Types\Null_;

defined('BASEPATH') or exit('No direct script access allowed');

class Dashboard extends CI_Controller
{
    function __construct()
    {
        parent::__construct();
        $this->load->helper('download');
    }
    public function index()
    {
        $data['rs'] = $this->m_crud->get_data('tb_rs_list')->result();
        $this->load->view('dashboard/dashboard', $data);
    }
    public function start_download()
    {
        force_download('gambar/sps.pdf', NULL);
        redirect(base_url('index'));
    }
}
