<div class="row-fluid">
    <div class="span12">
        <ul class="breadcrumb">
            <li><a href="admin.php">Home</a> <span class="divider">/</span></li>
            <li><a href="admin.php?w=my">MySQL Server</a> <span class="divider">/</span></li>
            <li><?php echo $gsprache->mod;?> <span class="divider">/</span></li>
            <li class="active"><?php echo $ip;?></li>
        </ul>
    </div>
</div>
<div class="row-fluid">
    <div class="span6">
        <form class="form-horizontal" action="admin.php?w=my&amp;d=ms&amp;id=<?php echo $id;?>&amp;r=my" onsubmit="return confirm('<?php echo $gsprache->sure; ?>');" method="post">
            <input type="hidden" name="token" value="<?php echo token();?>">
            <input type="hidden" name="action" value="md">
            <div class="control-group">
                <label class="control-label" for="inputActive"><?php echo $sprache->active;?></label>
                <div class="controls">
                    <select id="inputActive" name="active">
                        <option value="N"><?php echo $gsprache->no;?></option>
                        <option value="Y" <?php if ($active=='Y') echo 'selected="selected"'; ?>><?php echo $gsprache->yes;?></option>
                    </select>
                </div>
            </div>
            <div class="control-group">
                <label class="control-label" for="inputExternalID"><?php echo $gsprache->externalID;?></label>
                <div class="controls"><input id="inputExternalID" type="text" name="externalID" value="<?php echo $externalID;?>" maxlength="255"></div>
            </div>
            <div class="control-group">
                <label class="control-label" for="inputIP">IP:</label>
                <div class="controls">
                    <input id="inputIP" type="text" name="ip" maxlength="15" value="<?php echo $ip;?>" required>
                </div>
            </div>
            <div class="control-group">
                <label class="control-label" for="inputPort">Port:</label>
                <div class="controls">
                    <input id="inputPort" type="text" name="port" maxlength="5" value="<?php echo $port;?>" required>
                </div>
            </div>
            <div class="control-group">
                <label class="control-label" for="inputUser"><?php echo $sprache->user;?>:</label>
                <div class="controls">
                    <input id="inputUser" type="text" name="user" value="<?php echo $user;?>" required>
                </div>
            </div>
            <div class="control-group">
                <label class="control-label" for="inputPassword"><?php echo $sprache->password;?></label>
                <div class="controls">
                    <input id=inputPassword type="text" name="password" value="<?php echo $password;?>" required>
                </div>
            </div>
            <div class="control-group">
                <label class="control-label" for="inputMaxDatabases"><?php echo $sprache->max_databases;?></label>
                <div class="controls">
                    <input id=inputMaxDatabases type="number" name="max_databases" value="<?php echo $max_databases;?>" required>
                </div>
            </div>
            <div class="control-group">
                <label class="control-label" for="inputInterface"><?php echo $sprache->interface;?></label>
                <div class="controls">
                    <input id=inputInterface type="text" name="interface" value="<?php echo $interface;?>">
                </div>
            </div>
            <hr>
            <h5><?php echo $sprache->standards;?></h5>
            <div class="control-group">
                <label class="control-label" for="inputMaxQueriesPerHour"><?php echo $sprache->max_queries_per_hour;?></label>
                <div class="controls">
                    <input id="inputMaxQueriesPerHour" type="number" name="max_queries_per_hour" value="<?php echo $max_queries_per_hour;?>" required>
                </div>
            </div>
            <div class="control-group">
                <label class="control-label" for="inputMaxUpdatesPerHour"><?php echo $sprache->max_updates_per_hour;?></label>
                <div class="controls">
                    <input id="inputMaxUpdatesPerHour" type="number" name="max_updates_per_hour" value="<?php echo $max_updates_per_hour;?>" required>
                </div>
            </div>
            <div class="control-group">
                <label class="control-label" for="inputMaxConnectionsPerHour"><?php echo $sprache->max_connections_per_hour;?></label>
                <div class="controls">
                    <input id="inputMaxConnectionsPerHour" type="number" name="max_connections_per_hour" value="<?php echo $max_connections_per_hour;?>" required>
                </div>
            </div>
            <div class="control-group">
                <label class="control-label" for="inputMaxUserConnectionsPerHour"><?php echo $sprache->max_userconnections_per_hour;?></label>
                <div class="controls">
                    <input id="inputMaxUserConnectionsPerHour" type="number" name="max_userconnections_per_hour" value="<?php echo $max_userconnections_per_hour;?>" required>
                </div>
            </div>
            <div class="control-group">
                <label class="control-label" for="inputEdit"></label>
                <div class="controls">
                    <button class="btn btn-primary" id="inputEdit" type="submit"><i class="icon-edit icon-white"></i> <?php echo $gsprache->save;?></button>
                </div>
            </div>
        </form>
    </div>
</div>