<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class C_test extends CI_Controller {

	/**
	 * Index Page for this controller.
	 *
	 * Maps to the following URL
	 * 		http://example.com/index.php/welcome
	 *	- or -
	 * 		http://example.com/index.php/welcome/index
	 *	- or -
	 * Since this controller is set as the default controller in
	 * config/routes.php, it's displayed at http://example.com/
	 *
	 * So any other public methods not prefixed with an underscore will
	 * map to /index.php/welcome/<method_name>
	 * @see https://codeigniter.com/userguide3/general/urls.html
	 */


	 public function __construct(){
 	  parent::__construct();

		$this->load->helper('url');

		$this->load->model('m_ep_db');
		$this->load->helper("url");
		$this->load->library("pagination");
$this->load->library('session');
			$this->load->library('email');




				$this->load->model('m_ep_db');
 	}






		public function index()
		{


			$username = $this->session->userdata('user_name');


$this->load->model('m_ep_db');
$data['user_data'] = $this->m_ep_db->get_user_data($username);

// var_dump($data['user_data']);
// exit;

$user_id = $data['user_data'][0]->user_id;


$this->load->model('m_ep_db');
$data['data_menu'] = $this->m_ep_db->get_menu_by_user_id($user_id);


// var_dump($data['data_menu']);
// exit;

// var_dump($data['data_menu']);
// exit;

// var_dump($data['user_data'][0]->user_full_name);
// exit;
	$this->load->view('header',$data);
			// $this->load->view('sidebar_dashboard');
			$this->load->view('sidebar');
			$this->load->view('dashboard',$data);
				$this->load->view('footer');
		}



		public function elements()
		{

			$username = $this->session->userdata('user_name');

			$this->load->model('m_ep_db');
			$data['user_data'] = $this->m_ep_db->get_user_data($username);
	$this->load->view('header',$data);
	// $this->load->view('sidebar_elements');
	$this->load->view('sidebar');
			$this->load->view('elements',$data);
				$this->load->view('footer');
		}

		public function layout()
		{

			$username = $this->session->userdata('user_name');

			$this->load->model('m_ep_db');
			$data['user_data'] = $this->m_ep_db->get_user_data($username);
				$this->load->view('header',$data);
	// $this->load->view('sidebar_layout');
	$this->load->view('sidebar');
			$this->load->view('layout',$data);
				$this->load->view('footer');
		}

		public function chart()
		{

			$username = $this->session->userdata('user_name');

			$this->load->model('m_ep_db');
			$data['user_data'] = $this->m_ep_db->get_user_data($username);
				$this->load->view('header',$data);
	// $this->load->view('sidebar_chart');
	$this->load->view('sidebar');
			$this->load->view('chart',$data);
				$this->load->view('footer');
		}

		public function general()
		{

			$username = $this->session->userdata('user_name');

			$this->load->model('m_ep_db');
			$data['user_data'] = $this->m_ep_db->get_user_data($username);
				$this->load->view('header',$data);
	// $this->load->view('sidebar_general');
	$this->load->view('sidebar');
			$this->load->view('general',$data);
				$this->load->view('footer');
		}

		function add_save()
		{

			if(!empty($_POST['nama']))
			{
				$nama=$_POST['nama'];
			}else{
				$nama="";
			}

			if(!empty($_POST['alamat']))
			{
				$alamat=$_POST['alamat'];
			}else{
				$alamat="";
			}


			if(!empty($_POST['datepicker_tgl_lahir']))
			{
				$datepicker_tgl_lahir=$_POST['datepicker_tgl_lahir'];
			}else{
				$datepicker_tgl_lahir="";
			}

			if(!empty($_POST['datepicker_tgl_masuk_kerja']))
			{
				$datepicker_tgl_masuk_kerja=$_POST['datepicker_tgl_masuk_kerja'];
			}else{
				$datepicker_tgl_masuk_kerja="";
			}


			// var_dump($_POST['addmore'][0]['name']);
			// var_dump($_POST['addmore'][1]['name']);
			//

$jumlah=count($_POST['addmore']);

						// var_dump(count($_POST['addmore']));

						$timestamp_random = mt_rand(1, time());

						$this->load->model('m_ep_db');
						$res = $this->m_ep_db->insert_data_form($nama,$alamat,$datepicker_tgl_lahir,$datepicker_tgl_masuk_kerja, $timestamp_random );


						$this->load->model('m_ep_db');

						for ($x = 0; $x <= $jumlah-1; $x++) {
						  // echo "The number is: $x <br>";

							$riwayat =  $_POST['addmore'][$x]['name'];
							$res = $this->m_ep_db->insert_data_form_riwayat($timestamp_random, $riwayat );


						}




			$this->load->view('test_form_done');
		}



		public function the_listx()
		{
			var_dump("sini");

			$this->load->model('m_ep_db');


			// $this->load->model('m_ep_db');
			$data['get_data'] = $this->m_ep_db->ambil_list_karyawan22();
			// var_dump($data['get_data']);
			// exit;


			$this->load->view('test_list',$data);
		}


		public function delete_the_list()
		{



$this->load->model('m_ep_db');
$res = $this->m_ep_db->delete_list($_GET['id']);



	redirect('C_test/the_list');

		}

		public function update_the_list()
		{



			$this->load->model('m_ep_db');
			$data['get_list_karyawan_by_id'] = $this->m_ep_db->get_list_karyawan_by_id($_GET['id']);


			$this->load->view('test_form_udate',$data);
		}

		public function proses_update_the_list()
		{



$this->load->model('m_ep_db');
$res = $this->m_ep_db->update_list($_POST['hdn_id'],$_POST['nama'],$_POST['alamat'],$_POST['datepicker_tgl_lahir'],$_POST['datepicker_tgl_masuk_kerja']);



	redirect('C_test/the_list');

		}


}
