<?php
	$title    = 'Quản lí Slideshow';
	$url      = 'admin.php?controller=slideshow';
	$options = array(
	    'order_by' => 'Id ASC'
	);
	$slideshow  = get_all('slideshow', $options);
	require('admin/views/slideshow/index.php');
?>