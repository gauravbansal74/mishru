<?php echo $header; ?><?php echo $column_left; ?>
<div id="content">
	<div class="container-fluid">
		<div class="page-header">
			<ol class="breadcrumb">
				<?php foreach ($breadcrumbs as $breadcrumb) { ?>
				<li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
				<?php } ?>
			</ol>
		</div>
		<?php if ($success) { ?>
		<div class="alert alert-success"><i class="fa fa-check-circle fa-lg"></i> <?php echo $success; ?><button type="button" class="close" data-dismiss="alert">&times;</button></div>
		<?php } ?>
		<?php if ($error_warning) { ?>
		<div class="alert alert-danger"><i class="fa fa-exclamation-circle fa-lg"></i> <?php echo $error_warning; ?><button type="button" class="close" data-dismiss="alert">&times;</button></div>
		<?php } ?>
		<div class="panel panel-default">
			<div class="panel-heading">
				<div class="row">
					<div class="col-sm-6">
						<h3 class="panel-title"><p class="form-control-static"><i class="fa fa-instagram"></i> <?php echo $text_edit; ?></p></h3>
					</div>
					<div class="col-sm-6 text-right">
						<div class="btn-toolbar">
							<button type="submit" name="continue" value="0" class="btn btn-primary" form="form"><i class="fa fa-save fa-fw"></i> <?php echo $button_save; ?></button><button type="submit" name="continue" value="1" class="btn btn-primary" form="form"><i class="fa fa-save fa-fw"></i> <?php echo $button_save_continue; ?></button>
							<a class="btn btn-success" href="<?php echo $layout; ?>" target="_blank"><i class="fa fa-pencil"></i> <?php echo $text_layout; ?></a>
							<a class="btn btn-warning" href="<?php echo $cancel; ?>"><i class="fa fa-ban"></i> <?php echo $button_cancel; ?></a>
						</div>
					</div>
				</div>
			</div>
			<div class="panel-body">
				<form class="form-horizontal" action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form">
					<div class="form-group">
						<label class="col-sm-2 control-label" for="name"><?php echo $entry_name; ?></label>
						<div class="col-sm-3">
							<input type="text" name="name" class="form-control" value="<?php echo $name ? $name : $heading_title; ?>" id="name" maxlength="128">
							<?php echo $error_name; ?>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label" for="client_id"><?php echo $entry_client_id; ?></label>
						<div class="col-sm-3">
							<input type="text" name="client_id" class="form-control" value="<?php echo $client_id; ?>" id="client_id">
							<?php echo $error_client_id; ?>
						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-10 col-sm-offset-2">
							<i class="fa fa-instagram fa-lg fa-fw"></i><a class="" href="http://instagr.am/developer/register/" target="_blank"><?php echo $text_register_app; ?></a>
							<?php echo $help_client_id; ?>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label"><?php echo $entry_type; ?></label>
						<div class="col-sm-3">
							<select name="type" class="form-control">
								<option value="username"<?php echo ($type == 'username') ? ' selected=""' : ''; ?>><?php echo $text_username; ?></option>
								<option value="hashtag"<?php echo ($type == 'hashtag') ? ' selected=""' : ''; ?>><?php echo $text_hashtag; ?></option>
							</select>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label" for="username"><?php echo $entry_username; ?></label>
						<div class="col-sm-3">
							<input type="text" name="username" class="form-control" value="<?php echo $username; ?>" id="username">
							<?php echo $error_username; ?>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label" for="follow"><?php echo $entry_follow; ?></label>
						<div class="col-sm-3">
							<input type="text" name="follow" class="form-control" value="<?php echo $follow ? $follow : $text_follow; ?>" id="follow">
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label"><?php echo $entry_col_count; ?></label>
						<div class="col-sm-1">
							<select name="col_count" class="form-control">
								<?php for ($i = 1; $i <= 12; $i++) { ?>
								<option value="<?php echo $i; ?>"<?php echo ($col_count == $i) ? ' selected=""' : ''; ?>><?php echo $i; ?></option>
								<?php } ?>
							</select>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label"><?php echo $entry_row_count; ?></label>
						<div class="col-sm-1">
							<select name="row_count" class="form-control">
								<?php for ($i = 1; $i <= 12; $i++) { ?>
								<option value="<?php echo $i; ?>"<?php echo ($row_count == $i) ? ' selected=""' : ''; ?>><?php echo $i; ?></option>
								<?php } ?>
							</select>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label"><?php echo $entry_resolution; ?></label>
						<div class="col-sm-3">
							<select name="resolution" class="form-control">
								<option value="thumbnail"<?php echo ($resolution == 'thumbnail') ? ' selected=""' : ''; ?>>Thumbnail (150x150)</option>
								<option value="low_resolution"<?php echo ($resolution == 'low_resolution') ? ' selected=""' : ''; ?>>Small (306x306)</option>
								<option value="standard_resolution"<?php echo ($resolution == 'standard_resolution') ? ' selected=""' : ''; ?>>Standard (612x612)</option>
							</select>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label"><?php echo $entry_status; ?></label>
						<div class="col-sm-3">
							<select name="status" class="form-control">
								<option value="1"<?php echo $status ? ' selected=""' : ''; ?>><?php echo $text_enabled; ?></option>
								<option value="0"<?php echo $status ? '' : ' selected=""'; ?>><?php echo $text_disabled; ?></option>
							</select>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>
<?php echo $footer; ?>