<html>
    <head>
        <title><g:layoutTitle default="Grails" /></title>
        <meta name="keywords" content="" />
		<meta name="description" content="" />
        <link rel="stylesheet" href="${resource(dir:'css',file:'main.css')}" />
        <link rel="stylesheet" href="${resource(dir:'css',file:'default.css')}" />
        <link rel="stylesheet" href="${resource(dir:'css',file:'layout.css')}" />
        <link rel="shortcut icon" href="${resource(dir:'images',file:'favicon2.ico')}" type="image/x-icon" />
        <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.3/jquery.js"></script>
        <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.5/jquery-ui.js"></script>
        <g:layoutHead />        
    </head>
    <body>
        <div id="spinner" class="spinner" style="display:none;">
            <img src="${resource(dir:'images',file:'spinner.gif')}" alt="${message(code:'spinner.alt',default:'Loading...')}" />
        </div>
        <div id="header" class="container">
			<div id="top-menu">
				<ul>
					<sec:ifNotLoggedIn>
						<li class="first"><g:link controller="login">Login</g:link></li>
					</sec:ifNotLoggedIn>
					
					<sec:ifLoggedIn>
						<li class="first">Welcome back <sec:username/></li>
						<li><g:link controller="logout">Logout</g:link></li>
					</sec:ifLoggedIn>
					
					<li><a href="#" accesskey="2" title="">Site Map</a></li>
					<li><a href="#" accesskey="3" title="">Help</a></li>
				</ul>
			</div>
			<div id="header-content">
				<div id="logo">
					<h1><a href="#">BusinessName.com</a>Hedge Hunter</h1>
					<p>Lorem ipsum veroeros</p>
				</div>
				<div id="banner"><a href="#"><img src="${resource(dir:'images',file:'homepage03.jpg')}" width="637" height="142" alt="" /></a></div>
			</div>
			<div id="menu-content">
				<div id="menu">
					<ul>
						<li class="first"><a href="#" accesskey="1" title="">Home</a></li>
						<li><g:link controller="listing" action="newlisting">Add Listing</g:link></li>
						<li><g:link controller="listing" action="search">View Listing</g:link></li>
						<li><a href="#" accesskey="4" title="">Services</a></li>
						<li><a href="#" accesskey="5" title="">News</a></li>
						<li><a href="#" accesskey="6" title="">About Us</a></li>
						<li><a href="#" accesskey="7" title="">Contact Us</a></li>
					</ul>
				</div>
				<div class="date">
					<p><g:formatDate format="MM/dd/yyyy hh:mm:ss" date="${new Date()}" /></p>
				</div>
			</div>
		</div>
		<g:layoutBody/>
		<div id="footer-wrapper">
			<div id="footer-bgtop" class="container">
				<div id="footer-menu" class="container">
					<ul>
						<li class="first"><a href="#" accesskey="1" title="">Home</a></li>
						<li><a href="#" accesskey="2" title="">Add Listing</a></li>
						<li><a href="#" accesskey="3" title="">View Listings</a></li>
						<li><a href="#" accesskey="4" title="">Services</a></li>
						<li><a href="#" accesskey="5" title="">News</a></li>
						<li><a href="#" accesskey="6" title="">About Us</a></li>
						<li><a href="#" accesskey="7" title="">Contact Us</a></li>
					</ul>
				</div>
				<div id="footer" class="container">
					<p>Copyright (c) 2010-2011 ReinID.com. All rights reserved.</p>
				</div>
			</div>
		</div>
    </body>
</html>