<section class="content-header">
    <h1><?php echo $gsprache->support;?></h1>
    <ol class="breadcrumb">
		<li><a href="userpanel.php"><i class="fa fa-home"></i> Home</a></li>
		<li><a href="userpanel.php?w=ti"><?php echo $gsprache->support;?></a></li>
		<li class="active"><?php echo $gsprache->support2;?></li>
    </ol>
</section>

<!-- Main Content -->
<section class="content">

    <div class="box box-info">
        <div class="box-body">

			<form role="form" action="userpanel.php?w=ti&amp;d=ad&amp;r=ti" onsubmit="return confirm('<?php echo $gsprache->sure; ?>');" method="post">
				<input type="hidden" name="token" value="<?php echo token();?>">
				<div class="input-group">
                    <label class="input-group-addon" for="priority"><i class="fa fa-unsorted"></i></label>
					<select class="form-control" id="priority" name="userPriority">
                        <option value="1"><?php echo $sprache->priority_low;?></option>
                        <option value="2"><?php echo $sprache->priority_medium;?></option>
                        <option value="3"><?php echo $sprache->priority_high;?></option>
                        <option value="4"><?php echo $sprache->priority_very_high;?></option>
                        <option value="5"><?php echo $sprache->priority_critical;?></option>
					</select>
				</div>
                <br/>
				<div class="input-group">
                    <label class="input-group-addon" for="topic_name" title="Kategorie"><i class="fa fa-folder-open"></i></label>
					<select class="form-control" id="topic_name" name="maintopic" onchange="getdetails('serverallocation.php?d=rt&amp;po=', this.value)">
                        <?php foreach ($table as $table_row){ ?>
                        <option value="<?php echo $table_row['id'];?>" ><?php echo $table_row['topic'];?></option>
                        <?php } ?>
					</select>
				</div>
                <br/>
				<div class="input-group">
                    <label class="input-group-addon" for="topic_name"><i class="fa fa-folder-open"></i></label>
					<select class="form-control" id="topic_name" name="topic">
                        <?php foreach ($table2 as $table_row2){ ?>
                        <option value="<?php echo $table_row2['id'];?>" ><?php echo $table_row2['topic'];?></option>>
                        <?php } ?>
					</select>
				</div>
                <br/>
                <div class="input-group">
                    <label class="input-group-addon" for="problem"><?php echo $sprache->problem;?></label>
                    <textarea class="form-control" id="problem" name="ticket" rows="10"></textarea>
                </div>
        		<br/>
					<label for="inputEdit"></label>
						<button class="btn btn-primary" id="inputEdit" type="submit"><i class="fa fa-save">&nbsp;<?php echo $gsprache->save;?></i></button>
                        <input type="hidden" name="action" value="ad">
			</form>
        </div>
	</div>
</section>