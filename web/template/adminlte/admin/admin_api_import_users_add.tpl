<section class="content-header">
    <h1><?php echo $gsprache->userImport.' '.$gsprache->add;?></h1>
    <ol class="breadcrumb">
        <li><a href="admin.php"><i class="fa fa-home"></i> Home</a></li>
        <li><?php echo $gsprache->userImport;?></a></li>
        <li class="active"><?php echo $gsprache->add;?></li>
    </ol>
</section>

<!-- Main Content -->
<section class="content">

    <div class="box box-info">
        <div class="box-body">
            <form role="form" action="admin.php?w=ui&amp;d=ad&amp;r=ui" onsubmit="return confirm('<?php echo $gsprache->sure; ?>');" method="post">
                <input type="hidden" name="token" value="<?php echo token();?>">
                <input type="hidden" name="action" value="ad">
                
                <div class="form-group">
                    <label for="inputActive"><?php echo $gsprache->active;?></label>
                        <select class="form-control" id="inputActive" name="active">
                            <option value="Y"><?php echo $gsprache->yes;?></option>
                            <option value="N"><?php echo $gsprache->no;?></option>
                        </select>
                </div>
                
                <div class="form-group">
                    <label for="inputSSL"><?php echo $sprache->ssl;?></label>
                        <select class="form-control" id="inputSSL" name="ssl">
                            <option value="Y"><?php echo $gsprache->yes;?></option>
                            <option value="N"><?php echo $gsprache->no;?></option>
                        </select>
                </div>
                
                <div class="form-group">
                    <label for="inputDomain"><?php echo $sprache->domain;?></label>
                        <input class="form-control" id="inputDomain" type="text" name="domain" value="" required>
                </div>
                
                <div class="form-group">
                    <label for="inputFile"><?php echo $sprache->file;?></label>
                        <input class="form-control" id="inputFile" type="text" name="file" value="" required>
                </div>
                
                <div class="form-group">
                    <label for="inputToken">Token</label>
                        <input class="form-control" id="inputToken" type="text" name="accessToken" value="" required>
                </div>
                
                <div class="form-group">
                    <label for="inputFetchUpdates"><?php echo $sprache->fetchUpdates;?></label>
                        <select class="form-control" id="inputFetchUpdates" name="fetchUpdates">
                            <option value="Y"><?php echo $gsprache->yes;?></option>
                            <option value="N"><?php echo $gsprache->no;?></option>
                        </select>
                </div>
                
                <div class="form-group">
                    <label for="inputChunkSize">chunkSize</label>
                        <input class="form-control" id="inputChunkSize" type="number" name="chunkSize" value="" maxlength="19" required>
                </div>
                
                <div class="form-group">
                    <label class="control-label" for="inputGroupID"><?php echo $sprache->groupID;?></label>
                        <select class="form-control" id="inputGroupID" name="groupID">
                            <?php foreach ($groupIDS as $k=>$v){ ?><option value="<?php echo $k;?>"><?php echo $v;?></option><?php } ?>
                        </select>
                </div>
                
                    <label for="inputEdit"></label>
                        <button class="btn btn-primary" id="inputEdit" type="submit"><i class="fa fa-edit"></i> <?php echo $gsprache->save;?></button>
            </form>
        </div>
    </div>
</section>