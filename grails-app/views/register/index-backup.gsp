<html>
<head>
<meta name='layout' content='mainsingle' />
<title>Login</title>
</head>

<body class="single">
	<div id="page" class="container">
		<div id="page-bgtop">
			<div id="page-bgbtm">
				<div id="content-center">
					<div id="box1" class="box-style" style="margin: 0px auto;">
						<g:if test='${flash.message}'>
							<div class='login_message'>${flash.message}</div>
						</g:if>
						<h2 class="title">Member Login</h2>
						<div class="content">
							<div id="search">
							<form action='${postUrl}' method='POST' id='loginForm' class='cssform' autocomplete='off'>
								<fieldset>
									<ul>
										<li>
											<label for="username">Login ID:</label>
											<input type='text' class='text_' name='j_username' id='username' />
										</li>
										<li>
											<label for="password">Password:</label>
											<input type='password' class='text_' name='j_password' id='password' />
										</li>
										<li>
											<p class="login">
												<input type="submit" id="login-submit" value="Login" />
												&nbsp;&nbsp;&nbsp;&nbsp;
											</p>
											<p class="lost-password"><g:link controller="register">Register</g:link></p>
											
										</li>
									</ul>
								</fieldset>
							</form>
						</div>						
					</div>					
				</div>
				<br/><br/><br/><br/>
			</div>
			</div>
		</div>
	</div>		
<script type='text/javascript'>
<!--
(function(){
	document.forms['loginForm'].elements['j_username'].focus();
})();
// -->
</script>
</body>
</html>
