<div class="panel panel-default" style="margin-top:10px;">
	<div class="panel-heading" style="background:none;"><a class="btn btn-success" href="http://instagram.com/<?php echo $username; ?>" target="_blank"><i class="fa fa-instagram fa-lg fa-fw"></i> <?php echo $follow; ?></a></div>
	<?php if (!$results) { ?>
		<div class="panel-body">No media found for <strong><?php echo $username; ?></strong>!</div>
	<?php } else { ?>
	<table class="table table-bordered table-condensed">
	<?php foreach (array_chunk($results, $col_count) as $row) { ?>
		<tr>
			<?php foreach ($row as $result) { ?>
				<td><a href="<?php echo $result['link']; ?>" title="<?php echo $result['text']; ?>" target="_blank">
				<img style="width:100%;max-width:<?php echo $result['w']; ?>px;max-height:<?php echo $result['h']; ?>px;" class="center-block img-responsive" src="<?php echo $result['url']; ?>" alt="">
				</a></td>
			<?php } ?>
		</tr>
	<?php } ?>
	</table>
	<?php } ?>
<!-- 	<?php if ($follow) { ?>
	<div class="panel-footer">
		<a class="btn btn-success" href="http://instagram.com/<?php echo $username; ?>" target="_blank"><i class="fa fa-instagram fa-lg fa-fw"></i> <?php echo $follow; ?></a>
	</div>
	<?php } ?> -->
</div>