<?php
session_start();
include("includes/admin_config.php");
?>

<!DOCTYPE html>
<html>
<head>
<title>VIEW USER RECORDS - PAGINATED</title>
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

<p align="center"><b>ПРОСМОТР ЗАПИСЕЙ ПОЛЬЗОВАТЕЛЕЙ С РАЗБИВКОЙ ПО СТРАНИЦАМ</b></p>

<?php echo 'Привет, <strong>' . $admin . '</strong> Рад видеть вас за работой! || <a href="logout.php"> Выйти </a>'; ?>

<br />
<div align="center">
	<?php include("adminmenu.php");?>
</div>

<?php
/* 
        VIEW-PAGINATED.PHP
        Displays all data from 'players' table
        This is a modified version of view.php that includes pagination
*/

        // connect to the database
        include('includes/connect-db.php');
        
        // number of results to show per page
        $per_page = 5;
        
        // figure out the total pages in the database
        $result = mysql_query("SELECT * FROM users");
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
        
        echo "<p><a href='viewusers.php'>Просмотреть все</a> | <b>Просмотреть страницу:</b> ";
        for ($i = 1; $i <= $total_pages; $i++)
        {
                echo "<a href='viewusers-paginated.php?page=$i'>$i</a> ";
        }
        echo " | <a href='newuser.php'>Добавьте новую запись</a></p>";
                
        // display data in table
        echo "<table align='center' border='1' cellpadding='10'>";
        echo "<tr> <th>ID</th> <th>Имя</th> <th>Фамилия</th> <th>Логин</th> <th>Пароль</th> <th>Email</th> <th>Адрес</th> <th>Телефон</th> <th>Тип пользователя</th> <th>Статус</th> <th></th> <th></th></tr>";

        // loop through results of database query, displaying them in the table 
        for ($i = $start; $i < $end; $i++)
        {
                // make sure that PHP doesn't try to show results that don't exist
                if ($i == $total_results) { break; }
        
                // echo out the contents of each row into a table
				echo "<tr>";
				echo '<td>' . mysql_result($result, $i, 'user_id') . '</td>';
				echo '<td>' . mysql_result($result, $i, 'name') . '</td>';
				echo '<td>' . mysql_result($result, $i, 'surname') . '</td>';
				echo '<td>' . mysql_result($result, $i, 'username') . '</td>';
				echo '<td>' . mysql_result($result, $i, 'password') . '</td>';
				echo '<td>' . mysql_result($result, $i, 'email') . '</td>';
				echo '<td>' . mysql_result($result, $i, 'address') . '</td>';
				echo '<td>' . mysql_result($result, $i, 'tel') . '</td>';
				echo '<td>' . mysql_result($result, $i, 'ac_type') . '</td>';
				echo '<td>' . mysql_result($result, $i, 'user_status') . '</td>';
				echo '<td><a href="edituser.php?id=' . mysql_result($result, $i, 'user_id') . '">Изменить</a></td>';
				echo '<td><a href="deleteuser.php?paginated=yes&id=' . mysql_result($result, $i, 'user_id') . '">Удалить</a></td>';
				echo "</tr>";
        }
        // close table>
        echo "</table>"; 
        
        // pagination
        
?>
</body>
</html>