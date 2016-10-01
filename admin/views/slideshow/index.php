<?php
	require ('admin/views/templates/header.php');
	require ('admin/views/templates/nav-menu.php');
	
?>

	<?php
		if (isset($_SESSION['message'])) {
			$message = $_SESSION['message'];
			unset($_SESSION['message']);
	?>
			<div class="alert alert-success"><?php echo $message;  ?></div>
	<?php
		}
	?>
	

	<div id="page-wrapper">
	    <a href="admin.php?controller=slideshow&amp;action=edit" class="btn btn-primary pull-right"><i class="glyphicon glyphicon-plus"></i> Thêm mới</a>
	    <div class="panel panel-default">
	        <div class="panel-heading text-center">
	            <b><?php echo $title; ?></b>
	        </div>
	        <div class="panel-body">
	            <div class="dataTable_wrapper">
	                <table class="table table-striped table-bordered table-hover" id="dataTables">
	                    <thead>
		                    <tr>
		                        <th>STT</th>
		                        <th>Ảnh</th>
		                        <th>Trạng thái</th>
		                        <th>Chức năng</th>
		                    </tr>
	                    </thead>
	                    <tbody>
	                    <?php 
		                	$i = 1;
		                	foreach ($slideshow as $slideshow): 
		                ?>
	                        <tr class="odd gradeX">
	                            <td><?php echo $i; ?></td>
		                        <td><img class="img-responsive" title="<?php echo $slideshow['image_name']; ?>" width="70" src="public/upload/slideshows/<?php echo $slideshow['image_name'] ?>"></td>
		                        <td><?php
		                         		if ($slideshow['status'] == 1) {
		                         			echo "Đã kích hoạt";
		                         		} else {
		                         			echo "Không kích hoạt";
		                         		}
		                         	?>
		                         </td>
	                            <td>
	                                <a href="admin.php?controller=slideshow&amp;action=edit&amp;id=<?php echo $slideshow['Id']; ?>"
	                                   class="text-danger"><i class="glyphicon glyphicon-edit"></i></a>
	                                <a class="text-danger deleteitem" data-toggle="modal" data-target=".deleteModal-<?php echo $slideshow['Id'];  ?>"><i class="glyphicon glyphicon-remove"></i></a>
	                            </td>
	                        </tr>
	                        <div class="deleteModal-<?php echo $slideshow['Id'];  ?> modal fade" role="dialog">
	            				<div class="modal-dialog">
	            					<div class="modal-content">
	            						<div class="modal-header">
	            							<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
	            							<h4 class="modal-title">Xóa?</h4>
	            						</div>
	            						<div class="modal-body">
	            							<p>Bạn có chắc chắn muốn xóa Slideshow này?</p>
	            						</div>
	            						<div class="modal-footer">
	            							<button type="button" class="btn btn-default" data-dismiss="modal">Hủy</button>
	            							<a class="btn btn-danger" href="admin.php?controller=slideshow&amp;action=delete&amp;id=<?php echo $slideshow['Id']; ?>">Xóa</a>
	            						</div>
	            					</div>
	            				</div>
	            			</div>
	                    <?php 
	                    	$i++;
	                    	endforeach; 
	                    ?>
	                    </tbody>
	                </table>
	            </div>
	        </div>
	    </div>
	  
	</div>

<?php
	require ('admin/views/templates/footer.php');
	
?>