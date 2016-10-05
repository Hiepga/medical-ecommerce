<?php
	require('website/views/templates/header.php');
	require('website/views/templates/menu.php');
	
?>
<div class="body">
	<?php
		foreach ($banner as $banner):
	?>
	<div class="page-title" style="background: url('public/upload/images/<?php echo $banner['Images']; ?>')">
		<h2>Sản phẩm</h2>
	</div>
	<?php
		endforeach;
	?>
	<div class="product">
		<div class="container">
			<div class="row">
				<?php
					require "list-category.php";
					require "list-product.php"; 
				?>
			</div>
		</div>
	</div>
</div>



<?php
	require('website/views/templates/footer.php');
?>