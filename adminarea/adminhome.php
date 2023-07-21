<?php
session_start();

// User is already logged in. Redirect them somewhere useful.
if (!isset($_SESSION['username']))
{
	echo "<script>alert('Web Master Says : : Login First :-( !!!')</script>";
    echo "<meta http-equiv='refresh' content='2;url=../index-1.php'>";
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

<!DOCTYPE html>
<html>
<head>
<title>ЗОНА ДЛЯ ВЕБ-МАСТЕРОВ</title>
	<link rel="stylesheet" type="text/css" href="adminstyle.css">
</head>
<body>

<p align="center"><b>ЗОНА ДЛЯ ВЕБ-МАСТЕРОВ</b></p>

<?php echo 'Привет, <strong>' . $admin . '</strong> Рад видеть вас за работой! || <a href="logout.php"> Выйти </a>'; ?>

<br />
<div align="center">
	<?php include("adminmenu.php");?>
</div>
</body>
</html>