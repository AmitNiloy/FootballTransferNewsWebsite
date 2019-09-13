<?php

include "connection.php";

$sql=" SELECT * FROM transfer";

if (isset($_POST['search']))
{ $search_term = $_POST['search_box'];
 $sql .= "WHERE Player = '{$search_term}'"; }


$query=mysql_query($sql) or die(mysql_error());
?>
<form name ="search_form" method="POST" action= "display.php" >
<input type="text" name="search_box" value=""/>
<input type="submit" name="search" value="search Player">
</form>

<!DOCTYPE html>
<html>
    <head>
        <title>Done_Deals</title>
        <style>
            table,tr,th,td
            {
                border: 1px solid black;
				background:white;
            }
			backgroung:yellow;
        </style>
    </head>
    <body>
<table width="70%" cellpadding="5" cellspace="5" >
<tr>

<td><strong>Player</strong></td>
<td><strong>Transfer Fee(In million $) </strong></td>
<td><strong>Transfer From</strong></td>
<td><strong>Transfer To</strong></td>

</tr>

<?php while ($row=mysql_fetch_array($query)){?>
<tr>

<td><?php echo $row['Player']; ?></td>
<td><?php echo $row['Transfer_fee']; ?></td>
<td><?php echo $row['Transferred_from']; ?></td>
<td><?php echo $row['Transferred_to']; ?></td>

</tr>
<?php } ?>
</table>
</body>
</html>