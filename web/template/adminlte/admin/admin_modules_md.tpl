<section class="content-header">
    <h1><?php echo $gsprache->modules.' '.$gsprache->mod;?></h1>
    <ol class="breadcrumb">
        <li><a href="admin.php"><i class="fa fa-home"></i> Home</a></li>
        <li><?php echo $gsprache->modules;?></a></li>
        <li><?php echo $gsprache->mod;?></li>
        <li class="active"><?php echo $name;?></li>
    </ol>
</section>

<!-- Main Content -->
<section class="content">

    <div class="box box-info">
        <div class="box-body">

        <?php if (count($errors)>0){ ?>
        <div class="alert alert-error">
            <button type="button" class="close" data-dismiss="alert">&times;</button>
            <h4><?php echo $gsprache->errors;?></h4>
            <?php echo implode(', ',$errors);?>
        </div>
        <?php }?>

        <form role="form" action="admin.php?w=mo&amp;d=md&amp;id=<?php echo $id;?>&amp;r=mo" onsubmit="return confirm('<?php echo $gsprache->sure; ?>');" method="post">
            <input type="hidden" name="token" value="<?php echo token();?>">
            <input type="hidden" name="action" value="md">
            <div class="form-group<?php if(isset($errors['active'])) echo ' error';?>">
                <label for="inputActive"><?php echo $sprache->active;?></label>
                    <select class="form-control" id="inputActive" name="active">
                        <option value="Y"><?php echo $gsprache->yes;?></option>
                        <option value="N" <?php if ($active=='N') echo 'selected="selected"'; ?>><?php echo $gsprache->no;?></option>
                    </select>
            </div>
            <?php if($id>1000){ ?>
            <div class="form-group<?php if(isset($errors['type'])) echo ' error';?>">
                <label for="inputType"><?php echo $sprache->type;?></label>
                    <select class="form-control" id="inputType" name="type">
                        <option value="A"><?php echo $sprache->type_admin;?></option>
                        <option value="P" <?php if ($type=='P') echo 'selected="selected"'; ?>><?php echo $sprache->type_cms;?></option>
                        <option value="U" <?php if ($type=='U') echo 'selected="selected"'; ?>><?php echo $sprache->type_user;?></option>
                    </select>
            </div>
            <div class="form-group<?php if(isset($errors['sub'])) echo ' error';?>">
                <label for="inputSub"><?php echo $sprache->sub;?></label>
                    <select class="form-control" id="inputSub" name="sub">
                        <option value="mo"><?php echo $gsprache->modules;?></option>
                        <option value="gs" <?php if ($sub=='gs') echo 'selected="selected"'; ?>><?php echo $gsprache->gameserver;?></option>
                        <option value="vo" <?php if ($sub=='vo') echo 'selected="selected"'; ?>><?php echo $gsprache->voiceserver;?></option>
                        <option value="ro" <?php if ($sub=='ro') echo 'selected="selected"'; ?>>Rootserver</option>
                        <option value="my" <?php if ($sub=='my') echo 'selected="selected"'; ?>>MySQL</option>
                        <option value="fd" <?php if ($sub=='fd') echo 'selected="selected"'; ?>><?php echo $gsprache->fastdownload;?></option>
                        <option value="gs" <?php if ($sub=='us') echo 'selected="selected"'; ?>><?php echo $gsprache->user;?></option>
                        <option value="ti" <?php if ($sub=='ti') echo 'selected="selected"'; ?>><?php echo $gsprache->support;?></option>
                        <option value="pa" <?php if ($sub=='pa') echo 'selected="selected"'; ?>>CMS</option>
                    </select>
            </div>
            <div class="form-group<?php if(isset($errors['file'])) echo ' error';?>">
                <label for="inputFile"><?php echo $sprache->file;?></label>
                    <select class="form-control"  id="inputFile" name="file">
                        <?php foreach($files as $row){ ?>
                        <option <?php if($file==$row) echo 'selected="selected"';?>><?php echo $row;?></option>
                        <?php } ?>
                    </select>
            </div>
            <div class="form-group<?php if(isset($errors['get'])) echo ' error';?>">
                <label for="inputGet"><?php echo $sprache->get;?></label>
                    <input class="form-control"  id=inputGet type="text" name="get" value="<?php echo $get;?>">
            </div>
            <div class="form-group">
                <label for="inputDescription"><?php echo $sprache->description;?></label>
                    <?php foreach ($langAvailable as $lg) { ?>
                        <label class="checkbox inline">
                        <input class="form-control" type="checkbox"  name="lang[]" value="<?php echo $lg;?>" onclick="textdrop('<?php echo $lg;?>');" <?php if(isset($lg) and isset($languageTexts[$lg])) echo 'checked="checked"';?>><img src="images/flags/<?php echo $lg;?>.png" alt="Flag: <?php echo $lg;?>.png"/></label>
                    <?php } ?>
            </div>
            <?php foreach ($langAvailable as $lg) { ?>
            <div id="<?php echo $lg;?>" class="form-group <?php echo $array['display'];?>">
                <label for="inputLangs-<?php echo $lg;?>"><img src="images/flags/<?php echo $lg;?>.png" alt="Flag: 16_<?php echo $lg;?>'.png"/></label>
                <input class="form-control" type="text" id="inputLangs-<?php echo $lg;?>" name="translation[<?php echo $lg;?>]" value="<?php echo $languageTexts[$lg];?>">
            </div>
            <?php } ?>
            <?php } ?>
        </div>
    </div>
                <label for="inputEdit"></label>
                    <button class="btn btn-primary" id="inputEdit" type="submit"><i class="fa fa-edit"></i> <?php echo $gsprache->save;?></button>
        </form>
</section>