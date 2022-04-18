<?php
defined('BASEPATH') OR exit('No direct script access allowed');


class Home extends CI_Controller {

    public function __construct()
    {
        parent::__construct();

        $this->load->model('Home_model');
    }

    public function index()
    {
        $this->load->view('layout/header');
        $this->load->view('index');
        $this->load->view('layout/footer');
    }

    public function wisata()
    {
        $wisata = $this->Home_model->getWisata()->result_array();

        $data= [
            'wisata' => $wisata
        ];

        $this->load->view('layout/header');
        $this->load->view('wisata', $data);
        $this->load->view('layout/footer');
    }

    public function save_transaksi()
    {
       $namalengkap =  $this->input->post('nama_lengkap');
       $noktp       =  $this->input->post('no_ktp');
       $nohp        =  $this->input->post('no_hp');
       $tanggal     =  $this->input->post('tanggal_kunjungan');
       $dewasa      =  $this->input->post('pengunjung_dewasa');
       $anak        =  $this->input->post('pengunjung_anak');
       $wisata      =  $this->input->post('wisataid');
       $now         = date("Y-m-d H:i:s");
       
       $data = [
           'nama_lengkap'   => $namalengkap,
           'no_identitas'   => $noktp,
           'no_hp'          => $nohp,
           'tempat_wisata'  => $wisata,
           'tanggal_kunjungan' => $tanggal,
           'dewasa' => $dewasa,
           'anak'   => $anak,
           'qrcode'   => $qrcode,
           'created_date'   => $now
       ];
       
       $id = $this->Home_model->AddTransaksi($data);
       redirect('Home/print_data/'.$id);
    }

    public function print_data($id)
    {
        $wisata = $this->Home_model->getTransaksi($id)->result_array()[0];
        $data = [
            'detailpesan' => $wisata
        ];

        $this->load->view('printdata',$data);
    }

}