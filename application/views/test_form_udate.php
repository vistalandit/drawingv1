<html>
<head>
    <title>Form</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
		<link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
		<link rel="stylesheet" href="/resources/demos/style.css">
		<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
		<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
		<script>
		$( function() {
			$( "#datepicker_tgl_masuk_kerja" ).datepicker();
				$( "#datepicker_tgl_lahir" ).datepicker();
		} );
		</script>
</head>
<body>
<div class="container">
    <div class="form-group">
         <form name="add_name" method="POST" action="proses_update_the_list">
            <div class="table-responsive">
                <table class="table table-bordered" id="dynamic_field">
                  <?php
                    foreach($get_list_karyawan_by_id as $detail_update){
                  ?>
            			<tr>
								    <th><label for="nama">Nama: </label></th>
								    <th><input type="text" id="nama" name="nama" value="<?php   echo $detail_update->karyawan_nama;?>"></th>
								  </tr>
								  <tr>
								    <td><label for="alamat">Alamat: </label></td>
								    <td><textarea id="alamat" name="alamat" rows="4" cols="50"><?php   echo $detail_update->karyawan_alamat ;?></textarea></td>
								  </tr>
									<tr>
								    <td><label for="datepicker_tgl_lahir">Tanggal Lahir: </label></td>
								    <td colspan=2><input type="text" id="datepicker_tgl_lahir" name="datepicker_tgl_lahir" value="<?php   echo $detail_update->karyawan_tgl_lahir ;?>"></td>
								  </tr>
									<tr>
								    <td><label for="datepicker_tgl_masuk_kerja">Tanggal Masuk Kerja: </label></td>
								    <td colspan=2><input type="text" id="datepicker_tgl_masuk_kerja" name="datepicker_tgl_masuk_kerja" value="<?php   echo $detail_update->karyawan_tgl_masuk_kerja ;?>"></td>
								  </tr>
                  <?
                  }
                  ?>
                </table>
                 <input type="hidden" id="hdn_id" name="hdn_id" value="<?php   echo $detail_update->karyawan_id;?>">
                <input type="submit" name="submit" id="submit" class="btn btn-info" value="Update" />
            </div>
         </form>


    </div>
</div>

</body>
</html>
