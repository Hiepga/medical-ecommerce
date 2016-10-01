<div class="new_home">
	<div class="container">
		<div class="row">
			<div class="col-lg-9 ">
				<div class="content_news muc">
					<h1>Tin tức và sự kiện</h1>
					<div class="list_newopen owl-carousel">
						<?php
							foreach ($hotnew as $hotnew):
						?>
						<div class="list_news ">
							<a href="index.php?controller=detail-news&amp;nid=<?php echo $hotnew['Id'];?>">
								<img class="img-responsive" src="public/upload/images/<?php echo $hotnew['Images1'] ?>">
								<h3><?php echo $hotnew['NameNews'] ?></h3>
								<p><?php echo $hotnew['CaptionNew'] ?></p>
							</a>
						</div>
						<?php
							endforeach;
						?>
					</div>
				</div>
			</div>
			<div class="col-lg-3">
				<iframe width="100%" height="315" src="https://www.youtube.com/embed/qGRU3sRbaYw?auto=1" frameborder="0" allowfullscreen></iframe>
			</div>
		</div>
	</div>
</div>