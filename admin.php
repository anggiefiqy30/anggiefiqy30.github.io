<?php
	session_start();
	include("koneksi.php");
	if (@$_SESSION['userlogin'] == "")
	{
		header("location:index.php");
		exit;
	}

include("header_admin.php");
?>

<!-- Dashboard content -->
<div class="row">

	<div class="alert alert-warning alert-dismissible" role="alert">
		 <button type="button" class="close" data-dismiss="alert" aria-label="Close">
			 <span aria-hidden="true">&times; &nbsp;</span>
		 </button>
		 <strong>Selamat datang, <?php echo ucwords($_SESSION['userlogin']); ?>!</strong>.
	</div>
	<!-- /basic datatable -->
</div>
<!-- /dashboard content -->

<?php
include("footer.php");?>
