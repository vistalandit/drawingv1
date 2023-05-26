<!DOCTYPE html>
<html lang="en">
<head>
	<title>VistaLand Group 2023 | Doorprize 1</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="http://127.0.0.1/vistanet/assets/vendor/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="http://127.0.0.1/vistanet/assets/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="http://127.0.0.1/vistanet/assets/fonts/iconic/css/material-design-iconic-font.min.css">
	<link rel="stylesheet" type="text/css" href="http://127.0.0.1/vistanet/assets/vendor/animate/animate.css">
	<link rel="stylesheet" type="text/css" href="http://127.0.0.1/vistanet/assets/vendor/css-hamburgers/hamburgers.min.css">
		<link rel="stylesheet" type="text/css" href="http://127.0.0.1/vistanet/assets/vendor/animsition/css/animsition.min.css">
	<link rel="stylesheet" type="text/css" href="http://127.0.0.1/vistanet/assets/vendor/select2/select2.min.css">
	<link rel="stylesheet" type="text/css" href="http://127.0.0.1/vistanet/assets/vendor/daterangepicker/daterangepicker.css">
	<link rel="stylesheet" type="text/css" href="http://127.0.0.1/vistanet/assets/css/util.css">
	<link rel="stylesheet" type="text/css" href="http://127.0.0.1/vistanet/assets/css/main.css">
	<link rel="preconnect" href="https://fonts.gstatic.com">
	<link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@500&display=swap" rel="stylesheet">
</head>
<body>

	<div class="limiter">
		<div class="container-login100" style="background-image: url('http://127.0.0.1/vistanet/assets/image/backdrop_vlg.jpg');">

			<div class="images-top col-md-12">
				<img src="http://127.0.0.1/vistanet/assets/image/vl_logo3.png" alt="" width="500px">
			</div>

			<div class="images-midle col-md-12">
				<h1 id="myText">
					<?php
					 $hasil_satu = substr($winner[0]->mobile_phone,0,4);
					 $hasil_dua = substr($winner[0]->mobile_phone,4,4);
					echo $hasil_satu."-".$hasil_dua."-xxxx";?></h1>

				<h3 id="myText2"><?php echo $winner[0]->nama_peserta; ?></h3>

				<script src="http://127.0.0.1/vistanet/assets/js/shuffle-text.js"></script>
				<script>
					var text = new ShuffleText(document.querySelector('#myText'));
					text.start();

					var text2 = new ShuffleText(document.querySelector('#myText2'));
					text2.start();
				</script>

			</div>

			<div class="images-bottom col-md-12">

				<a href="http://127.0.0.1/vistanet/home/page_index" class="btn confer-btn">
					 BACK </a>
			</div>

		</div>
	</div>


	<div id="dropDownSelect1"></div>

<!--===============================================================================================-->
	<script src="http://127.0.0.1/vistanet/assets/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="http://127.0.0.1/vistanet/assets/vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="http://127.0.0.1/vistanet/assets/vendor/bootstrap/js/popper.js"></script>
	<script src="http://127.0.0.1/vistanet/assets/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="http://127.0.0.1/vistanet/assets/vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="http://127.0.0.1/vistanet/assets/vendor/daterangepicker/moment.min.js"></script>
	<script src="http://127.0.0.1/vistanet/assets/vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="http://127.0.0.1/vistanet/assets/vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="http://127.0.0.1/vistanet/assets/js/main.js"></script>

</body>
</html>
