<?php
	require('admin/models/auth.php');
	if (!empty($_POST)) {
		$email   = escape($_POST['email']);
		$pass    = $_POST['password'];
		select_user($email, $pass);
	}
	if (isset($_SESSION['user'])) {
	    $user = $_SESSION['user'];
	    header('location:admin.php');
	}else{
		// header('location:admin.php?controller=auth&action=login');
	}
	require('admin/views/auth/index.php');
?>