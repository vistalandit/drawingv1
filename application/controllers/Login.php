<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Login extends CI_Controller {

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

function __construct(){
	parent::__construct();
	// 	$this->load->helper('url');
	$this->load->model('M_ep_db');



			$this->load->helper('url');

			$this->load->model('m_ep_db');
			$this->load->helper("url");
			$this->load->library("pagination");
	$this->load->library('session');
				$this->load->library('email');



}


	public function index()
	{
		// $this->load->view('log_book');
		$this->load->view('view_login');
	}

	public function check_log()
	{

		if(isset($_POST['username']))
		{
			$username=$_POST['username'];
		}else{
			$username=Null;
		}



		if(isset($_POST['password']))
		{
			$password=$_POST['password'];
		}else{
			$password=Null;
		}



	$this->load->model('M_ep_db');
$query=$this->M_ep_db->get_users_pass($username,$password);




		if($query)
		{
			$data = array(
				'user_name' => $this->input->post('username'),
				'is_logged_in' => true
			);

			// var_dump($data);
			// exit;


			$this->session->set_userdata($data);
			redirect('c_test/index');
		}




	}

}
