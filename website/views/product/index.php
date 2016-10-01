<?php
	require('website/views/templates/header.php');
	require('website/views/templates/menu.php');
?>
<div class="body">
	<div class="page-title">
		<h2>Sản phẩm</h2>
	</div>
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