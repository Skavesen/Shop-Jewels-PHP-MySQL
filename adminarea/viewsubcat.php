<?php
session_start();
?>

<!DOCTYPE html>
<html>
<head>
<title>VIEW SUB CATEGORY RECORDS</title>
	<link rel="stylesheet" type="text/css" href="adminstyle.css">
</head>
<body>

<?php

// User is already logged in. Redirect them somewhere useful.
if (!isset($_SESSION['username']))
{
	echo "<script>alert('Web Master Says : : Login First :-( !!!')</script>";
    echo "<meta http-equiv='refresh' content='2;url=../index-1.php'>";
	exit();
}

else if(!isset($_SESSION['status']) )
{
	echo "<script>alert('INTRUDER!!!: :')</script>";
    echo "<meta http-equiv='refresh' content='2;url=../index-1.php'>";
	exit();
}

else
{
	$admin = $_SESSION['username'];
}

?>

<p align="center"><b>ПРОСМОТР ЗАПИСЕЙ ПОДКАТЕГОРИЙ</b></p>

<?php echo 'Привет, <strong>' . $admin . '</strong> Рад видеть вас за работой! || <a href="logout.php"> Выйти </a>'; ?>

<br />
<div align="center">
	<?php include("adminmenu.php");?>
</div>

<?php
/* 
        VIEW.PHP
        Displays all data from 'players' table
*/

        // connect to the database
        include('includes/connect-db.php');

        // get results from database

        $result = mysql_query("SELECT * FROM main_menu, sub_menu WHERE main_menu.mmenu_id = sub_menu.mmenu_id ORDER BY sub_menu.id ASC") 
                or die(mysql_error());  
                
        // display data in table
        echo "<p><b>Просмотреть все</b> | <a href='viewsubcat-paginated.php?page=1'>Просмотр с разбивкой по страницам</a> | <a href='newsubcat.php'>Добавить новую подкатегорию</a></p>";
        
        echo "<table align='center' border='1' cellpadding='10'>";
		
        echo "<tr> <th>ID</th> <th>ID ГЛАВНОГО МЕНЮ</th>  <th>НАЗВАНИЕ ГЛАВНОГО МЕНЮ</th> <th>НАЗВАНИЕ ПОДМЕНЮ</th> <th>ССЫЛКА НА ПОДМЕНЮ</th> <th></th> <th></th></tr>";
		
		// loop through results of database query, displaying them in the table

        while($row = mysql_fetch_array( $result )) {	
			// echo out the contents of each row into a table
			echo "<tr>";
			echo '<td>' . $row['id'] . '</td>';
			echo '<td>' . $row['mmenu_id'] . '</td>';
			echo '<td>' . $row['mmenu_name'] . '</td>';
			echo '<td>' . $row['smenu_name'] . '</td>';
			echo '<td>' . $row['smenu_link'] . '</td>';
			echo '<td><a href="editsubcat.php?id=' . $row['id'] . '">Изменить</a></td>';
			echo '<td><a href="deletesubcat.php?paginated=no&id=' . $row['id'] . '">Добавить</a></td>';
			echo "</tr>"; 
		}

        // close table>
        echo "</table>";
?>
</body>
</html>