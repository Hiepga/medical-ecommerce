<?php
	function select_user($email,$pass)
	{
		$email  =  escape($email);
		$pass   =  md5($pass);
		$sql    =  "SELECT * FROM admin WHERE Email = '$email' AND Password = '$pass'";
		$query  =  mysql_query($sql) or die(mysql_error());
		if (mysql_num_rows($query) > 0) {
			$_SESSION['user'] = mysql_fetch_assoc($query);
		 	return True;
		}
		return False; 

	}

?>