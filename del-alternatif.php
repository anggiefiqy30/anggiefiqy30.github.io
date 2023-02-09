<?php
	session_start();
	include("koneksi.php");
	if (@$_SESSION['userlogin'] == "")
	{
		header("location:index.php");
		exit;
	}
	mysql_query("DELETE FROM alternatif WHERE kode_alternatif = '$_GET[kode_alternatif]'");
	header("location:alternatif.php");
?>
