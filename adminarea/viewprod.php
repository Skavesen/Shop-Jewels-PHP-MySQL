<?php
session_start();
?>

<!DOCTYPE html>
<html>
<head>
<title>VIEW PRODUCTS RECORDS</title>
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

<p align="center"><b>ПРОСМОТР ЗАПИСЕЙ О ПРОДУКТАХ</b></p>

<?php echo 'Привет, <strong>' . $admin . '</strong> Рад видеть вас за работой! || <a href="logout.php"> Выйти </a>'; ?>

<br />
<div align="center">
	<?php include("adminmenu.php");?>
</div>

<?php

        // connect to the database
        include('includes/connect-db.php');
		
		$src="../Photos/";

        // get results from database
        $result = mysql_query("SELECT * FROM jewellery ORDER BY id ASC") 
                or die(mysql_error());  
                
        // display data in table
        echo "<p><b>Просмотреть все</b> | <a href='viewprod-paginated.php?page=1'>Просмотр с разбивкой по страницам</a> | <a href='newprod.php'>Добавить новый продукт</a></p>";
        
        echo "<table align='center' border='1' cellpadding='10'>";
		
		echo "<tr> <th>ID</th> <th>НАЗВАНИЕ</th> <th>ПУТЬ КАРТИНКИ</th> <th>КАТЕГОРИЯ</th> <th>ЦЕНА</th> <th>ОПИСАНИЕ</th> <th>ТИП</th> <th>ПРОСМОТРЫ</th> <th>КАРТИНКА</th> <th></th> <th></th></tr>";

		// loop through results of database query, displaying them in the table

        while($row = mysql_fetch_array( $result )) {	
			// echo out the contents of each row into a table
			echo "<tr>";
			echo '<td>' . $row['id'] . '</td>';
			echo '<td>' . $row['prodname'] . '</td>';
			echo '<td>' . $row['path'] . '</td>';
			echo '<td>' . $row['category'] . '</td>';
			echo '<td>' . $row['price'] . '</td>';
			echo '<td>' . $row['descr'] . '</td>';
			echo '<td>' . $row['type'] . '</td>';
			echo '<td>' . $row['noviews'] . '</td>';
			echo '<td><img src="' . $src . $row['path'] . '" width="80px height="80"></td>';
			echo '<td><a href="editprod.php?id=' . $row['id'] . '">Изменить</a></td>';
			echo '<td><a href="deleteprod.php?paginated=no&id=' . $row['id'] . '">Удалить</a></td>';
			echo "</tr>"; 
		}

        // close table>
        echo "</table>";
?>
</body>
</html>