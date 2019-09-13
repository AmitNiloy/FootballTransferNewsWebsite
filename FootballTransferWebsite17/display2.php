<?php

include "new 1.php";

$sql=" SELECT * FROM transfer";

if (isset($_POST['search']))
{ $search_term = $_POST['search_box'];
 $sql .= "SELECT * FROM transfer = '{$search_term}'"; }


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
		  body{
           background-image: url(hobe.jpg);
                   }
		
            table,tr,th,td
            {
                border: 1px solid white;
				color:white;
            }
			
			.header{
			width=100%;
			background-color:orange;
			font-size:20px;
			font-weight:bolder;
			text-align:center;
		}
        </style>
    </head>
	<div class ="header">
	Done Deals
	</div>
	
   
<body> 
<table width="70%" cellpadding="5" cellspace="5" align="center" >
<tr>

<td><strong>Player</strong></td>
<td><strong>Transfer Fee(in Million $)</strong></td>
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