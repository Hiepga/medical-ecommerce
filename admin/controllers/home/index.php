<?php
	$title   = 'Quản trị hệ thống';
	$options = array(
		'order_by' => 'Id ASC',
	);
	// Hiển thị 5 đơn đặt hàng mới nhất
	$option_order   = array(
		'where'     => 'Status = 0',
		'order_by'  => 'Createtime DESC',
		'limit'     => 5,
		'offset'    => 0
	);
	$order        = get_all('transaction', $option_order);

	$total_order  = get_total('transaction');

	// print_r($order);
	// die();
	require('admin/views/home/index.php');
	
?>