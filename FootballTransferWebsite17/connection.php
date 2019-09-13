<?php

$connect=mysql_connect("localhost","root","")or die(mysql_error());
mysql_select_db("transfer_database",$connect) or die(mysql_error());


?>