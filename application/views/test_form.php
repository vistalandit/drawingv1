<?php

echo $username;
?>
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
         <form name="add_name" method="POST" action="C_test/add_save">
            <div class="table-responsive">
                <table class="table table-bordered" id="dynamic_field">
									<tr>
								    <th><label for="nama">Nama: </label></th>
								    <th><input type="text" id="nama" name="nama"></th>
								  </tr>
								  <tr>
								    <td><label for="alamat">Alamat: </label></td>
								    <td><textarea id="alamat" name="alamat" rows="4" cols="50"></textarea></td>
								  </tr>
									<tr>
								    <td><label for="datepicker_tgl_lahir">Tanggal Lahir: </label></td>
								    <td colspan=2><input type="text" id="datepicker_tgl_lahir" name="datepicker_tgl_lahir"></td>
								  </tr>
									<tr>
								    <td><label for="datepicker_tgl_masuk_kerja">Tanggal Masuk Kerja: </label></td>
								    <td colspan=2><input type="text" id="datepicker_tgl_masuk_kerja" name="datepicker_tgl_masuk_kerja"></td>
								  </tr>
	                  <tr>
												<td><button type="button" name="add" id="add" class="btn btn-success">Add More</button></td>
                        <td colspan=2><input type="text" name="addmore[][name]" placeholder="type your riwayat akademis" class="form-control name_list" required="" /></td>
                    </tr>
                </table>
                <input type="submit" name="submit" id="submit" class="btn btn-info" value="Submit" />
            </div>
         </form>

         <br><br><br>
           <a href="the_listx" target=" _blank">View list</a>
    </div>
</div>
<script type="text/javascript">
    $(document).ready(function(){
      var i=1;
      $('#add').click(function(){
           i++;
           $('#dynamic_field').append('<tr id="row'+i+'" class="dynamic-added"><td>&nbsp;</td><td><input type="text" name="addmore[][name]" placeholder="type your riwayat akademis" class="form-control name_list" required /></td><td><button type="button" name="remove" id="'+i+'" class="btn btn-danger btn_remove">X</button></td></tr>');
      });

      $(document).on('click', '.btn_remove', function(){
           var button_id = $(this).attr("id");
           $('#row'+button_id+'').remove();
      });
    });
</script>
</body>
</html>
