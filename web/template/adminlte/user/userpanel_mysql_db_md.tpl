<section class="content-header">
    <h1>MySQL <?php echo $gsprache->databases.' '.$gsprache->mod;?></h1>
    <ol class="breadcrumb">
		<li><a href="userpanel.php"><i class="fa fa-home"></i> Home</a></li>
		<li><a href="userpanel.php?w=my">MySQL <?php echo $gsprache->databases;?></a></li>
		<li class="active"><?php echo $dbname.' ('.$ip.' )';?></li>
    </ol>
</section>

<!-- Main Content -->
<section class="content">

    <div class="box box-info">
        <div class="box-body">
			<form role="form" action="userpanel.php?w=my&amp;id=<?php echo $id;?>&amp;r=my" onsubmit="return confirm('<?php echo $gsprache->sure;?>');" method="post">
				<input type="hidden" name="token" value="<?php echo token();?>">

				<div class="form-group">
					<label for="inputDescription"><?php echo $sprache->description;?></label>
					<input class="form-control" id=inputDescription type="text" name="description" value="<?php echo $description;?>">
				</div>
				
				<div class="form-group">
					<label for="password"><?php echo $sprache->password;?></label>
					<input class="form-control" id="password" type="text" name="password" value="<?php echo $password;?>">
				</div>
				
				<?php if($manage_host_table == 'Y'){ ?>
				<div class="input-group">
					<label class="input-group-addon" for="ips"><?php echo $sprache->ips;?></label>
					<textarea class="form-control" id="ips" name="ips" rows="5"><?php echo $ips?></textarea>
				</div>
				<?php } ?>

				<br/>
		</div>
	</div>
					<label for="inputEdit"></label>
					<button class="btn btn-primary" id="inputEdit" type="submit"><i class="icon-edit icon-white"></i> <?php echo $gsprache->save;?></button>
					<input class="input-group-addon" type="hidden" name="action" value="md">
			</form>
</section>