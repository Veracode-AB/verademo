<%@ page language="java" contentType="text/html; charset=US-ASCII"
	pageEncoding="US-ASCII"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<link rel="icon" href="../../favicon.ico">

<title>Login to Blab (TOTP)</title>

<!-- Bootstrap core CSS -->
<link href="resources/css/bootstrap.min.css" rel="stylesheet">
<!-- Bootstrap theme -->
<link href="resources/css/bootstrap-theme.min.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="resources/css/pwm.css" rel="stylesheet">

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body role="document">

	<div class="container">

		<div class="header clearfix">
			<nav>
				<ul class="nav nav-pills pull-right">
					<li role="presentation"><a href="reset">Reset</a></li>
					<li role="presentation"><a href="login" class="active">Login</a></li>
					<li role="presentation"><a href="register">Register</a></li>
				</ul>
			</nav>
			<img src="resources/images/Tokyoship_Talk_icon.svg" height="100"
				width="100">
		</div>


	</div>

	<div class="container theme-showcase" role="main">

		<div class="page-header">
			<h3>Login (TOTP)</h3>
		</div>

		<%
			String error = (String) request.getAttribute("error");
			if (null != error) {
		%>
		<div class="alert alert-danger" role="alert">
			<%=error%>
		</div>

		<%
			}
		%>


		<div class="row">
			<div class="col-md-12">

				<div class="panel panel-default">
					<div class="panel-heading">
						<h3 class="panel-title">Please provide your TOTP code to login to Blab</h3>
					</div>
					<div class="panel-body">
						<form method="POST" action="<%= request.getAttribute("javax.servlet.forward.request_uri") %>">
							<table class="table table-condensed">
								<tbody>
									<tr>
										<td>TOTP Code</td>
										<td><div class="form-group">
												<input type="text" class="form-control" name="totpcode"
													value="">
									</tr>
									<tr>
										<td><button type="submit" class="btn btn-primary"
												id="submit" name="Submit" value="Login">Submit</button></td>
										<td></td>
									</tr>
								</tbody>
							</table>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>

	<script>
		var totpSecret = '${totpSecret}';
		console.log("TOTP Secret: " + totpSecret);
	</script>
</body>
</html>
