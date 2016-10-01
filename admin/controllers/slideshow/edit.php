<?php
	if (!empty($_POST)) {
		require_once 'admin/models/Slideshow.php';
		if (isset($_POST['id'])) {
			$id = $_POST['id'];
			if ($id == 0) {
				$message = "Thêm mới Slideshow thành công";
			} else {
				$message = "Cập nhật Slideshow thành công";
			}
			$title = $_POST['title'];
			$caption = $_POST['caption'];
			$imageName = 'image';
			if (isset($_POST['status'])) {
				$status = 1;
			} else {
				$status = 0;
			}
			$slideshow = new Slideshow($id, $imageName, $status, $title, $caption);
			if ($slideshow->saveSlideshow() == true) {
				$_SESSION['message'] = $message;
				header('Location: admin.php?controller=slideshow');
			} else {
				$_SESSION['error'] = "Có lỗi xảy ra. Không thêm được Slideshow";
			}
		}
		
	} else {
		if (isset($_GET['id'])) $id = intval($_GET['id']); else $id = 0;
		$slideshow = get_a_record('slideshow', $id);
	}

	$title   = ($id == 0)? 'Thêm sản phẩm' : 'Sửa sản phẩm' ;

	//load view
	require('admin/views/slideshow/edit.php');
?>