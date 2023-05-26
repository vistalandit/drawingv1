<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class M_ep_db extends CI_Model {

  function update_list($id,$nama,$alamat,$datepicker_tgl_lahir,$datepicker_tgl_masuk_kerja)
  {
      $this->db = $this->load->database('default', TRUE);
    $q = $this->db->query("
    UPDATE  ciputra2_intranet.tbl_form_karyawan
    SET tbl_form_karyawan.karyawan_nama    ='".$nama."',
    tbl_form_karyawan.karyawan_alamat     ='".$alamat."',
    tbl_form_karyawan.karyawan_tgl_lahir    ='".$datepicker_tgl_lahir."',
      tbl_form_karyawan.karyawan_tgl_masuk_kerja    ='".$datepicker_tgl_masuk_kerja."'

    WHERE tbl_form_karyawan.karyawan_id ='".$id."';
                          ");

    // $data = $q->result();
    return $q;
  }

  function delete_list($id)
  {
      $this->db = $this->load->database('default', TRUE);
    $q = $this->db->query("
    UPDATE  ciputra2_intranet.tbl_form_karyawan
    SET tbl_form_karyawan.karyawan_status      ='0'

    WHERE tbl_form_karyawan.karyawan_id ='".$id."';
                          ");

    // $data = $q->result();
    return $q;
  }

  //
  // function get_menu_by_user_id($user_id)
  // {
  //
  //   $q = $this->db->query("
  //   select
  //   site_menu.menu_name,
  //   user_name,
  //   site_authorize_menu.menu_id,
  //   site_authorize_menu.submenu_id
  //   from
  //   site_authorize_menu,
  //   site_user,
  //   site_menu
  //   where site_authorize_menu.user_id  = '".$user_id."'
  //   and site_user.user_id=site_authorize_menu.user_id
  //   and site_menu.menu_id=site_authorize_menu.menu_id
  //
  //     ");
  //
  //   $data = $q->result();
  //   return $data;
  // }



  function ambil_riwayat_by_unique_id($unique_id)
  {
    $q = $this->db->query("
      SELECT *
      FROM
         ciputra2_intranet.tbl_form_riwayat
      WHERE
    tbl_form_riwayat.karyawan_unique_id  = '".$unique_id."'


      ");

    $data = $q->result();
    return $data;
  }



  function get_users_pass($username,$password)
  {
    $q = $this->db->query("
      SELECT *
      FROM
         vistanet_db.site_user
      WHERE
    site_user.user_name  = '".$username."'
    and site_user.user_pass  = '".$password."'
    and site_user.user_status=1


      ");

    $data = $q->result();
    return $data;
  }



function get_role_by_role_id($role_id)
{
  $q = $this->db->query("
    SELECT *
    FROM
       vistanet_db.site_role
    WHERE
  site_role.role_id  = '".$role_id."'

  and site_role.role_status=1


    ");

  $data = $q->result();
  return $data;
}


    function get_user_data($username)
    {
      $q = $this->db->query("
        SELECT *
        FROM
           vistanet_db.site_user
        WHERE
      site_user.user_name  = '".$username."'

      and site_user.user_status=1


        ");

      $data = $q->result();
      return $data;
    }




        function get_menu_by_user_id($user_id)
        {
          $q = $this->db->query("
          select
          site_menu.menu_name,
          user_name,
          site_authorize_menu.menu_id
          from
          site_authorize_menu,
          site_user,
          site_menu
          where site_authorize_menu.user_id  = '".$user_id."'
          and site_user.user_id=site_authorize_menu.user_id
          and site_menu.menu_id=site_authorize_menu.menu_id


            ");

          $data = $q->result();
          return $data;
        }



    function ambil_data_karya()
    {
      $q = $this->db->query("
        SELECT *
        FROM
           ciputra2_intranet.tbl_form_karyawan
        WHERE
      tbl_form_karyawan.karyawan_status =1



        ");

      $data = $q->result();
      return $data;
    }




  function ambil_list_karyawan_by_id($id)
  {
    $q = $this->db->query("
      SELECT *
      FROM
         ciputra2_intranet.tbl_form_karyawan
      WHERE
    tbl_form_karyawan.karyawan_status =1
    and tbl_form_karyawan.karyawan_id = '".$id."'


      ");

    $data = $q->result();
    return $data;
  }

  function ambil_list_karyawan22()
  {
    $q = $this->db->query("
      SELECT *
      FROM
          ciputra2_intranet.tbl_form_karyawan
      WHERE
    tbl_form_karyawan.karyawan_status =1


      ");

    $data = $q->result();
    return $data;
  }


  function insert_data_form_riwayat( $timestamp_random, $riwayat )
  {

    $this->db = $this->load->database('default', TRUE);
    date_default_timezone_set('Asia/Jakarta');
    $timestamp = strtotime("now");

              $q = $this->db->query("
                 INSERT INTO  ciputra2_intranet.tbl_form_riwayat  (
                      riwayat_created_timestamp  ,
                      riwayat_status   ,
                      riwayat_nama   ,
                      karyawan_unique_id
                   )VALUES (

                       '$timestamp',
                       '1',
                      '$riwayat',
                      '$timestamp_random'

                     )
                  ");

              return $q;


  }


  function insert_data_form( $nama,$alamat,$datepicker_tgl_lahir,$datepicker_tgl_masuk_kerja,$timestamp_random )
  {

// var_dump($timestamp_random);
// exit;

    $this->db = $this->load->database('default', TRUE);
    date_default_timezone_set('Asia/Jakarta');
    $timestamp = strtotime("now");

              $q = $this->db->query("
                 INSERT INTO  ciputra2_intranet.tbl_form_karyawan  (
                      karyawan_created_timestamp  ,
                      karyawan_status  ,
                      karyawan_nama   ,
                      karyawan_alamat  ,
                      karyawan_tgl_lahir ,
                      karyawan_tgl_masuk_kerja,
                       	unique_id
                   )VALUES (

                       '$timestamp',
                       '1',
                      '$nama',
                      '$alamat',
                     '$datepicker_tgl_lahir',
                     '$datepicker_tgl_masuk_kerja',
                     '$timestamp_random'

                     )
                  ");

              return $q;


  }


}
