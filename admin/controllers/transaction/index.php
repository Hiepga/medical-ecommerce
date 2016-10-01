<?php
	$title    = 'Đơn hàng';
	$options  = array(
		'order_by' => 'Id ASC',
	);
	$transaction =  get_all('transaction', $options);
	$status = array(
	    0 => 'Chưa xử lý',
	    1 => 'Đã xử lý'
	);
	require('admin/views/transaction/index.php');
?>