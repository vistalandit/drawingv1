<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends CI_Controller {

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
	 * @see https://codeigniter.com/user_guide/general/urls.html
	 */
	public function index()
	{
		// var_dump("sini");
		// exit;
		$this->load->view('v_index');
	}

	function page_index(){
		$this->load->view('v_index');
	}

	function page_random(){
		$this->load->model("m_post");
		$data['winner'] = $this->m_post->get_1_participants();
// var_dump($data['winner']);
// exit;
			// Input into tbl_log_drawing
			date_default_timezone_set('Asia/Jakarta');

			$data_2 = array(

				'log_created_timestamp'=>date("Y-m-d H:i:s"),
				'log_status'=>1,
				'log_creator_user_id'=>1,
				'hadiah_id'=>1,
				'participants_kupon'=>$data['winner'][0]->mobile_phone,
				'no_order_booking'=>$data['winner'][0]->no_order_booking,
				'peserta_id'=>$data['winner'][0]->peserta_id,
				'participants_full_name'=>$data['winner'][0]->nama_peserta

			);

// var_dump($data_2);
// exit;

			$this->load->model("m_post");
			$this->m_post->insert_log_winner($data_2);

			// Update Winner in tbl_participants
			$this->load->model("m_post");
			$this->m_post->update_winner_participants($data['winner'][0]->peserta_id);



		$this->load->view('v_random', $data);
	}




	function page_index_5(){
		$this->load->view('v_index_5');
	}

	function page_index_4(){
		$this->load->view('v_index_4');
	}

	function page_index_3(){
		$this->load->view('v_index_3');
	}

	function page_index_2(){
		$this->load->view('v_index_2');
	}

	// function page_random_5(){
	// 	$this->load->model("m_post");
	// 	$data['winner'] = $this->m_post->get_5_participants();
	//
	// 	foreach($data['winner'] as $d){
	//
	// 		// echo $d->participants_phone;
	// 		date_default_timezone_set('Asia/Jakarta');
	//
	// 		$data_2 = array(
	//
	// 			'log_created_timestamp'=>date("Y-m-d H:i:s"),
	// 			'log_status'=>1,
	// 			'log_creator_user_id'=>1,
	// 			'hadiah_id'=>1,
	// 			'participants_kupon'=>$d->participants_phone,
	// 			'participants_full_name'=>$d->participants_full_name
	//
	// 		);
	//
	// 		$this->load->model("m_post");
	// 		$res = $this->m_post->insert_log_winner($data_2);
	//
	// 		// Update Winner in tbl_participants
	// 		$this->load->model("m_post");
	// 		$this->m_post->update_winner_participants($d->participants_phone);
	//
	// 	}
	//
	// 	$this->load->view('v_random_5', $data);
	// }

	function page_random_5(){

		$this->load->model("m_post");
		$data['winner'] = $this->m_post->get_5_participants();


		foreach($data['winner'] as $d){

			// Input into tbl_log_drawing
			date_default_timezone_set('Asia/Jakarta');

			$data_2 = array(

				'log_created_timestamp'=>date("Y-m-d H:i:s"),
				'log_status'=>1,
				'log_creator_user_id'=>1,
				'hadiah_id'=>1,
				'participants_kupon'=>$d->mobile_phone,
				'no_order_booking'=>$d->no_order_booking,
				'email'=>$d->email,
				'peserta_id'=>$d->peserta_id,
				'participants_full_name'=>$d->nama_peserta

			);





			// echo $data
			// var_dump($d->peserta_id);
// var_dump($data['winner'][0]->peserta_id);

// foreach($data_2 as $roq4) {
// echo $roq4->peserta_id;
// }


				$this->load->model("m_post");
				$this->m_post->insert_log_winner_goodiebag100($data_2);

				// Update Winner in tbl_participants
				$this->load->model("m_post");
				$this->m_post->update_winner_goodiebag100($d->peserta_id);
			}
		// var_dump($data);
		// exit();
		$this->load->view('v_random_5', $data);
	}




	function page_goodiebag_email(){



		$this->load->model("m_post");
		$data['winner_goodiebag'] = $this->m_post->get_goodiebag_participants();



		// var_dump($data['winner_goodiebag']);
		// exit;


		foreach($data['winner_goodiebag'] as $d){

			date_default_timezone_set('Asia/Jakarta');

		// echo $d->email;
		// echo "<br>";
		// echo $d->nama_peserta;
		// echo "<br>";
		// echo $d->peserta_id;



$berita="
Dear Mr/Mrs ".ucwords($d->nama_peserta).",

Congratulation on your winning the 'Century 21 Exclusive Bag'.
The Prize can be claim at Century 21 Indonesia Office :

Ciputra World 1 Jakarta, Retail Podium 10th floor (P10).
Jl.Prof.Dr.Satrio Kav 3-5, Jakarta, 12940, Phone : 021 - 2988 2121.

And this is your code winner : ".$d->peserta_id."

1. Show this email and your code winner,
   as a proof for claiming you as the winner of 'Century 21 Exclusive Bag'.
2. The Prize can be claim at office hours & workdays
   (9:00 AM - 5:00 PM, Mon - Fri).
3. Starting from the 23rd of March (Today),
   you can claim the prize until 1 month period ahead.
4. Contact our Century 21 person incharge, 'Dewi Pratiwi',
   for further info @ 021 - 2988 2121

Thank you,
ONE21 2021 REGISTRATION
";



			$from_email = "registration@century21.co.id";

			$to_email = $d->email;


			$this->load->library('email');
			$this->email->from($from_email, 'ONE21-2021 - Registration');
			$this->email->to($to_email);
			$this->email->subject('[ONE21 Registration] C21 Exclusive Bag - '.$d->email);
			$this->email->message($berita);

			$this->email->send();




		// 	$data_2 = array(
		//
		// 		'log_created_timestamp'=>date("Y-m-d H:i:s"),
		// 		'log_status'=>1,
		// 		'log_creator_user_id'=>1,
		// 		'hadiah_id'=>1,
		// 		'participants_kupon'=>$d->mobile_phone,
		// 		'no_order_booking'=>$d->no_order_booking,
		// 		'email'=>$d->email,
		// 		'peserta_id'=>$d->peserta_id,
		// 		'participants_full_name'=>$d->nama_peserta
		//
		// 	);
		//
		//
		//
		//
		// 		$this->load->model("m_post");
		// 		$this->m_post->insert_log_winner_goodiebag100($data_2);
		//
		//
		// 		$this->load->model("m_post");
		// 		$this->m_post->update_winner_goodiebag100($d->peserta_id);
			}
		//
		// $this->load->view('v_random_5', $data);
	}



	function page_random_4(){

		$this->load->model("m_post");
		$data['winner'] = $this->m_post->get_4_participants();


		foreach($data['winner'] as $d){

			// Input into tbl_log_drawing
			date_default_timezone_set('Asia/Jakarta');

			$data_2 = array(

				'log_created_timestamp'=>date("Y-m-d H:i:s"),
				'log_status'=>1,
				'log_creator_user_id'=>1,
				'hadiah_id'=>1,
				'participants_kupon'=>$d->mobile_phone,
				'no_order_booking'=>$d->no_order_booking,
				'email'=>$d->email,
				'peserta_id'=>$d->peserta_id,
				'participants_full_name'=>$d->nama_peserta

			);

			// echo $data
			// var_dump($d->peserta_id);
// var_dump($data['winner'][0]->peserta_id);

// foreach($data_2 as $roq4) {
// echo $roq4->peserta_id;
// }




				$this->load->model("m_post");
				$this->m_post->insert_log_winner($data_2);

				// Update Winner in tbl_participants
				$this->load->model("m_post");
				$this->m_post->update_winner_participants($d->peserta_id);




				// $this->load->model("m_post");
				// $this->m_post->insert_log_winner_goodiebag100($data_2);
				//
				// // Update Winner in tbl_participants
				// $this->load->model("m_post");
				// $this->m_post->update_winner_goodiebag100($d->peserta_id);
			}
		// var_dump($data);
		// exit();
		$this->load->view('v_random_4', $data);
	}






		function page_random_3(){

			$this->load->model("m_post");
			$data['winner'] = $this->m_post->get_3_participants();


			foreach($data['winner'] as $d){

				// Input into tbl_log_drawing
				date_default_timezone_set('Asia/Jakarta');

				$data_2 = array(

					'log_created_timestamp'=>date("Y-m-d H:i:s"),
					'log_status'=>1,
					'log_creator_user_id'=>1,
					'hadiah_id'=>1,
					'participants_kupon'=>$d->mobile_phone,
					'no_order_booking'=>$d->no_order_booking,
					'email'=>$d->email,
					'peserta_id'=>$d->peserta_id,
					'participants_full_name'=>$d->nama_peserta

				);

				// echo $data
				// var_dump($d->peserta_id);
	// var_dump($data['winner'][0]->peserta_id);

	// foreach($data_2 as $roq4) {
	// echo $roq4->peserta_id;
	// }




					$this->load->model("m_post");
					$this->m_post->insert_log_winner($data_2);

					// Update Winner in tbl_participants
					$this->load->model("m_post");
					$this->m_post->update_winner_participants($d->peserta_id);




					// $this->load->model("m_post");
					// $this->m_post->insert_log_winner_goodiebag100($data_2);
					//
					// // Update Winner in tbl_participants
					// $this->load->model("m_post");
					// $this->m_post->update_winner_goodiebag100($d->peserta_id);
				}
			// var_dump($data);
			// exit();
			$this->load->view('v_random_3', $data);
		}



		function page_random_2(){

			$this->load->model("m_post");
			$data['winner'] = $this->m_post->get_2_participants();


			foreach($data['winner'] as $d){

				// Input into tbl_log_drawing
				date_default_timezone_set('Asia/Jakarta');

				$data_2 = array(

					'log_created_timestamp'=>date("Y-m-d H:i:s"),
					'log_status'=>1,
					'log_creator_user_id'=>1,
					'hadiah_id'=>1,
					'participants_kupon'=>$d->mobile_phone,
					'no_order_booking'=>$d->no_order_booking,
					// 'email'=>$d->email,
					// 'email'=>'reno@gamil.com',
					'peserta_id'=>$d->peserta_id,
					'participants_full_name'=>$d->nama_peserta

				);





					$this->load->model("m_post");
					$this->m_post->insert_log_winner($data_2);

					// Update Winner in tbl_participants
					$this->load->model("m_post");
					$this->m_post->update_winner_participants($d->peserta_id);




				}

			$this->load->view('v_random_2', $data);
		}




	// function validation_email(){
	// 	$this->load->model('m_post');
	// 	$data['id_participants'] = $this->m_post->cek_validation_email($_POST['email']);

	// 	if(!empty($data['id_participants'])){

	// 		$data['id'] = $data['id_participants'][0]->participants_id;
	// 		$this->load->view('v_download', $data);

	// 	} else {

	// 		$this->load->view('v_failed');

	// 	}
	// }
}
