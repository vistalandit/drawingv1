<!DOCTYPE html>
<html>
<head>
<style>
table {
font-family: arial, sans-serif;
border-collapse: collapse;
width: 100%;
}

td, th {
border: 1px solid #dddddd;
text-align: left;
padding: 8px;
}

tr:nth-child(even) {
background-color: #dddddd;
}
</style>
</head>
<body>
  <h2>The List</h2>
    <table>
      <tr>
        <th>Nama</th>
        <th>Alamat</th>
        <th>Tanggal Lahir</th>
        <th>Tanggal Masuk Kerja</th>
        <th>Riwayat</th>
        <th>Action</th>
      </tr>
      <?php
        foreach($get_data as $detail)
        {
      ?>
      <tr>
        <td><?php   echo $detail->karyawan_nama;?></td>
        <td><?php   echo $detail->karyawan_alamat;?></td>
        <td><?php   echo $detail->karyawan_tgl_lahir ;?></td>
        <td><?php   echo $detail->karyawan_tgl_masuk_kerja;?></td>
        <td>
          <?php
          $detail->unique_id ;

          $this->load->model('m_ep_db');
          $data['get_riwayat_by_unique_id'] = $this->m_ep_db->ambil_riwayat_by_unique_id($detail->unique_id);

          $jmlh=count($data['get_riwayat_by_unique_id']);

          for ($x = 0; $x <= $jmlh-1; $x++)
          {
            echo $data['get_riwayat_by_unique_id'][$x]->riwayat_nama."<br><br>" ;
          }
          ?>
        </td>
        <td>
          <a href="delete_the_list?id=<?php echo $detail->karyawan_id;?>"  target="_self">delete</a>  <br>
          <a href="update_the_list?id=<?php echo $detail->karyawan_id;?>" target="_self">update</a>
        </td>
      </tr>
      <?php
      }
      ?>
</table>
</body>
</html>
