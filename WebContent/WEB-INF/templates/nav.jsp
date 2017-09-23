<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>

<nav class="navbar navbar-inverse navbar-fixed-top">
	<div class="container">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#navbar" aria-expanded="false"
				aria-controls="navbar">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="/BellInfo"> <img alt="Brand"
				src="/BellInfo/resources/images/logo.png" height="30" width="90" />
			</a>
		</div>
		<div id="navbar" class="navbar-collapse collapse">
			<ul class="nav navbar-nav">
				<security:authorize access="isAnonymous()">
				<li><a href="/BellInfo/signup">Sign Up</a></li>
				</security:authorize>
				
				<security:authorize access="!isAnonymous()">
					<li><a href="/BellInfo/landing">Home</a></li>
				</security:authorize>

				<security:authorize access="isAnonymous()">
				<li><a href="/BellInfo/contact">Contact Us</a></li>
				</security:authorize>
				
				<security:authorize access="!isAnonymous()">
					<li><a href="/BellInfo/resume">My Resume</a></li>
				</security:authorize>
				
				
				
				
				<security:authorize access="!isAnonymous()">
					<li><a href="/BellInfo/proxy">Need A Proxy</a></li>
				</security:authorize>
				
				<security:authorize access="!isAnonymous()">
					<li><a href="/BellInfo/friendsatbellinfo">Friends at BellInfo</a></li>
				</security:authorize>
				
			</ul>

			<security:authorize access="isAnonymous()">
			<form class="navbar-form navbar-right" role="search">
				<div class="form-group">
					<input type="text" class="form-control" placeholder="Search">
				</div>
				<button type="submit" class="btn btn-default">Submit</button>
			</form>
			</security:authorize>
			
			<ul class="nav navbar-nav navbar-right">
				<security:authorize access="isAnonymous()">
					<li><a href="/BellInfo/signin">Signin</a></li>
				</security:authorize>
				<security:authorize access="!isAnonymous()">
					<ul class="nav navbar-nav navbar-right">
						
						<li><a href="#">Welcome <security:authentication
									property="principal.username" /></a></li>
						<li><a href="/BellInfo/logout">Logout</a></li>
					</ul>
				</security:authorize>

			</ul>
		</div>
		<!--/.nav-collapse -->
	</div>
</nav>