<!-- Content Header -->
<section class="content-header">
    <h1><?php echo $gsprache->gameserver;?></h1>
    <ol class="breadcrumb">
        <li><a href="userpanel.php"><i class="fa fa-home"></i> Home</a></li>
        <li><a href="userpanel.php?w=gs"><?php echo $gsprache->gameserver;?></a></li>
		<li>Web FTP</li>
		<li class="active"><?php echo $address;?></li>
    </ol>
</section>
<!-- Main Content -->
<section class="content">
	<div class="box box-info">
		<div class="box-body">
			<?php echo $monstaDisplay;?>		
		</div>
	</div>
</section>