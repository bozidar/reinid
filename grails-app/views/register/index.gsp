<html>
<head>
<meta name='layout' content='mainsingle' />
<link rel="stylesheet" href="${resource(dir:'css',file:'form.css')}" />
<title>New User Registration</title>
</head>

<body class="single">
	<div id="page" class="container">
		<div id="page-bgtop">
			<div id="page-bgbtm">
				<div id="content-center-register">
						<g:if test='${flash.message}'>
							<div class='login_message'>${flash.message}</div>
						</g:if>
						<div class="content">
							<div>
								<br/><br/><br/>
								<div id="stylized" class="myform">
									<g:hasErrors bean="${userInstance}">
							            <div class="errors">
							                <g:renderErrors bean="${userInstance}" as="list" />
							            </div>
						            </g:hasErrors>
									<g:form id="form" name="form" url="[action:'newuser',controller:'register']">									
										<h1>Sign-up form</h1>
										
										<label>First Name
										<span class="small">Add your First Name</span>
										</label>
										<input type="text" name="firstName" id="firstName" value="${userInstance?.firstName}" class="value ${hasErrors(bean: userInstance, field: 'firstName', 'errors')}" />
										
										<label>Last Name
										<span class="small">Add your Last Name</span>
										</label>
										<input type="text" name="lastName" id="lastName" value="${userInstance?.lastName}" class="value ${hasErrors(bean: userInstance, field: 'lastName', 'errors')}"/>
										
										<label>Username
										<span class="small">Add your Username</span>
										</label>
										<input type="text" name="username" id="username_u" value="${userInstance?.username}" class="value ${hasErrors(bean: userInstance, field: 'username', 'errors')}"/>
										
										<label>Password
										<span class="small">Min. size 6 chars</span>
										</label>
										<input type="password" name="password" id="password_u" value="${userInstance?.password}" class="value ${hasErrors(bean: userInstance, field: 'password', 'errors')}"/>
										
										<label>Email
										<span class="small">Add a valid address</span>
										</label>
										<input type="text" name="email" id="email" value="${userInstance?.email}" class="value ${hasErrors(bean: userInstance, field: 'email', 'errors')}"/>
										
										<button type="submit">Sign-up</button>
										<div class="spacer"></div>
									
									</g:form>
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
	document.forms['form'].elements['firstName'].focus();
})();
// -->
</script>
</body>
</html>
