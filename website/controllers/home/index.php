<?php 
	$title = 'Trang chủ';

	$option     = array(
		'order_by'  => 'Createdate DESC',
		'limit'     => 5,
		'offset'    => 0
	);
	$hotproduct = get_all('product', $option);
	$hotnew     = get_all('news', $option);
	require('website/views/home/index.php');
?>
