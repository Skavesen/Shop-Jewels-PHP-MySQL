<?php
session_start();
?>

<!DOCTYPE html>
<html>
<head>
<title>VIEW PRODUCTS RECORDS - PAGINATED</title>
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

<p align="center"><b>ПРОСМОТР ЗАПИСЕЙ О ТОВАРАХ С РАЗБИВКОЙ ПО СТРАНИЦАМ</b></p>

<?php echo 'Привет, <strong>' . $admin . '</strong> Рад видеть вас за работой! || <a href="logout.php"> Выйти </a>'; ?>

<br />
<div align="center">
	<?php include("adminmenu.php");?>
</div>

<?php
        // connect to the database
        include('includes/connect-db.php');
		
		$src="../Photos/";
        
        // number of results to show per page
        $per_page = 30;
        
        // figure out the total pages in the database
        $result = mysql_query("SELECT * FROM jewellery ORDER BY id ASC");
        $total_results = mysql_num_rows($result);
        $total_pages = ceil($total_results / $per_page);

        // check if the 'page' variable is set in the URL (ex: view-paginated.php?page=1)
        if (isset($_GET['page']) && is_numeric($_GET['page']))
        {
                $show_page = $_GET['page'];
                
                // make sure the $show_page value is valid
                if ($show_page > 0 && $show_page <= $total_pages)
                {
                        $start = ($show_page -1) * $per_page;
                        $end = $start + $per_page; 
                }
                else
                {
                        // error - show first set of results
                        $start = 0;
                        $end = $per_page; 
                }               
        }
        else
        {
                // if page isn't set, show first set of results
                $start = 0;
                $end = $per_page; 
        }
        
        // display pagination
        
        echo "<p><a href='viewprod.php'>Просмотреть все</a> | <b>Просмотреть страницу:</b> ";
        for ($i = 1; $i <= $total_pages; $i++)
        {
                echo "<a href='viewprod-paginated.php?page=$i'>$i</a> ";
        }
        echo " | <a href='newprod.php'>Добавить новый продукт</a></p>";
                
        // display data in table
        echo "<table align='center' border='1' cellpadding='10'>";
        echo "<tr> <th>ID</th> <th>НАЗВАНИЕ</th> <th>ПУТЬ КАРТИНКИ</th> <th>КАТЕГОРИЯ</th> <th>ЦЕНА</th> <th>ОПИСАНИЕ</th> <th>ТИП</th> <th>ПРОСМОТРЫ</th> <th>КАРТИНКА</th> <th></th> <th></th></tr>";

        // loop through results of database query, displaying them in the table 
        for ($i = $start; $i < $end; $i++)
        {
                // make sure that PHP doesn't try to show results that don't exist
                if ($i == $total_results) { break; }
        
                // echo out the contents of each row into a table
				echo "<tr>";
				echo '<td>' . mysql_result($result, $i, 'id') . '</td>';
				echo '<td>' . mysql_result($result, $i, 'prodname') . '</td>';
				echo '<td>' . mysql_result($result, $i, 'path') . '</td>';
				echo '<td>' . mysql_result($result, $i, 'category') . '</td>';
				echo '<td>' . mysql_result($result, $i, 'price') . '</td>';
				echo '<td>' . mysql_result($result, $i, 'descr') . '</td>';
				echo '<td>' . mysql_result($result, $i, 'type') . '</td>';
				echo '<td>' . mysql_result($result, $i, 'noviews') . '</td>';
				echo '<td><img src="' . $src . mysql_result($result, $i, 'path') . '" width="80px height="80"></td>';
				echo '<td><a href="editprod.php?id=' . mysql_result($result, $i, 'id') . '">Изменить</a></td>';
				echo '<td><a href="deleteprod.php?paginated=yes&id=' . mysql_result($result, $i, 'id') . '">Удалить</a></td>';
				echo "</tr>";
        }
        // close table>
        echo "</table>"; 
        
        // pagination
        
?>
</body>
</html>