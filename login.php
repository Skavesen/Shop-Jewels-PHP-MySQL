<?php
session_start();
?>
<!DOCTYPE html>
<html>
<head>
<title>BB Jewellery :: Login Screen</title>
<script type="text/javascript" src="js/jquery-1.7.1.min.js"></script>
<script>
$('#btnClose').click(function(e) {
    $('#loginDiv').hide(0);
});

</script>

</head>

<body>

<form id="ajaxform" method="post" action="processlogin.php">
<div id="login_center_main" style="text-align:center">
	<div id="closeLogin" style="text-align:right;">
    <a href="#">
    	<img src="image/close.jpg" width="10%" height="10%" id="btnClose" /></a>
	</div>
	<div id="inputDivLogin">
   
    	<div id="LoginLabel"><b>Логин</b></div>
        <div id="LoginInput"><input type="text" name="txtusername" class="Logintextboxes"/></div>
        
    </div>
	<br />
    <div id="inputDivLogin">
    	<div id="LoginLabel"><b>Пароль</b></div>
		<div id="LoginInput"><input type="password" name="txtpassword" class="Logintextboxes"/></div>
    </div>
	<br />
    <div id="inputDivLoginControl">
    	<div>
        	<input id="btnSignin" class="LoginButton" type="submit" value="Войти" />
            <input class="LoginButton" id="btnClear" type="reset" value="Очистить" />
 
		</div>
	</div>
</div>
</form>

</body>
</html>