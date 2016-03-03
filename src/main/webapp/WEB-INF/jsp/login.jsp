<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang=en>
<head>
<meta charset=utf-8>
<meta http-equiv=X-UA-Compatible content="IE=edge">
<meta name=viewport content="width=device-width, initial-scale=1">
<meta name=description content="">
<meta name=author content="">
<link rel=icon href=/Content/AssetsBS3/img/favicon.ico>
<title>Signin Template for Bootstrap</title>
<link href=plugins/almsaeed/bootstrap/css/bootstrap.min.css rel=stylesheet>
<link href=plugins/bootstrap/css/signin.css rel=stylesheet>
<!-- jQuery 2.1.4 -->
<script src="plugins/almsaeed/plugins/jQuery/jQuery-2.1.4.min.js"></script>
<!--[if lt IE 9]><script src=~/Scripts/AssetsBS3/ie8-responsive-file-warning.js></script><![endif]-->
<script src=plugins/bootstrap/js/ie-emulation-modes-warning.js></script>
<!--[if lt IE 9]><script src=https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js></script><script src=https://oss.maxcdn.com/respond/1.4.2/respond.min.js></script><![endif]-->
<body>
	<div class=container>
		<form class=form-signin role=form>
			<h2 class=form-signin-heading>Please sign in</h2>
			<label for=account class=sr-only>Account</label> <input type=text id=account class=form-control placeholder="Account" required autofocus> <label
				for=password class=sr-only>Password</label> <input type=password id=password class=form-control placeholder=Password required>
			<div class=checkbox>
				<label> <input type=checkbox value=remember-me> Remember me
				</label>
			</div>
			<button class="btn btn-lg btn-primary btn-block" type=button onClick="login()">Sign in</button>
		</form>
	</div>
	<script src=plugins/bootstrap/js/ie10-viewport-bug-workaround.js></script>
	<script type="text/javascript" src="js/login.js"></script>
</body>
</html>