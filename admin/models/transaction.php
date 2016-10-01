<?php
	function load_detail_order($oid)
	{
		$sql  = "SELECT Product.Id, Product.Name, Product.Price, Product.Image1, Order.ProductId,Order.Quantity, Order.TransactionId
				FROM `Order`
				INNER JOIN Product
				ON  Order.ProductId = Product.Id
				WHERE Order.TransactionId = '$oid' ";
		$query = mysql_query($sql) or die(mysql_error());
		if (mysql_num_rows($query) > 0) {
			while ($row = mysql_fetch_assoc($query)) {
				$data[] = $row;
			}
			mysql_free_result($query);
		}
		return $data;
	}
?>