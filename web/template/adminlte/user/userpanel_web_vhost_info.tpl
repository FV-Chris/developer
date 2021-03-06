<!-- Content Header -->
<section class="content-header">
    <h1><?php echo $gsprache->webspace.' '.$gsprache->fdlInfo;?></h1>
    <ol class="breadcrumb">
        <li><a href="userpanel.php"><i class="fa fa-home"></i> Home</a></li>
		<li><a href="userpanel.php?w=wv"><?php echo $gsprache->webspace;?></a></li>
		<li><?php echo $sprache->fdlInfo;?></li>
		<li class="active"><?php echo $dns;?></li>
    </ol>
</section>
<!-- Main Content -->
<section class="content">

	<!-- Content Help -->
    <div class="row hidden-xs">
        <div class="col-md-12">
            <div class="alert alert-info alert-dismissable">
                <i class="fa fa-info"></i>
                <?php echo $sprache->help_fdl_attention;?>
            </div>
        </div>
    </div>
	
	<div class="box box-info">	
		<div class="box-body">
			<div class="form-group">
				<label><?php echo $sprache->help_fdl_hl;?></label>
				<textarea class="form-control" rows="4"><?php echo $hlCfg;?></textarea>
			</div>
		</div>
	</div>
	
	<div class="box box-info">	
		<div class="box-body">
			<div class="form-group">
				<label><?php echo $sprache->help_fdl_cod;?></label>
				<textarea class="form-control" rows="4"><?php echo $codCfg;?></textarea>
			</div>
		</div>
	</div>
</section>