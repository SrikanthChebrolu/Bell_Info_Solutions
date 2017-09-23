<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>




<!-- REGISTRATION FORM -->
<div class="text-center" style="padding:50px 0">
	<div class="logo">register</div>
	<!-- Main Form -->
	<div class="login-form-1">
		<form:form action="/BellInfo/signup" method="post"
				 modelAttribute="user">
			<div class="login-form-main-message"></div>
			<div class="main-login-form">
				<div class="login-group">
				
				
					<div class="form-group">
						<label class="sr-only">First Name</label>
							<form:input type="text" class="form-control"
						placeholder="First Name" path="firstname"
						aria-describedby="basic-addon1" />
					</div>
					<div class="form-group">
						<label class="sr-only">Last Name</label>
						<form:input type="text" class="form-control"
						placeholder="Last Name" path="lastname"
						aria-describedby="basic-addon1" />
					</div>
					<div class="form-group">
						<label for="reg_email" class="sr-only">Email</label>
						<form:input type="text" class="form-control" placeholder="Email"
						path="email" aria-describedby="basic-addon1" />
					</div>
					
					<div class="form-group">
						<label for="reg_fullname" class="sr-only">Phonenumber</label>
							<form:input type="text" class="form-control"
						placeholder="Phone Number" path="phonenumber"
						aria-describedby="basic-addon1" />
					</div>
					
					<div class="form-group">
						<label for="reg_fullname" class="sr-only"> Intrested Technology</label>
							<form:input type="text" class="form-control"
						placeholder="Intrested Technology" path="usertechnology"
						aria-describedby="basic-addon1" />
					</div>
					
					<div class="form-group">
						<label for="reg_fullname" class="sr-only">Masters Group</label>
							<form:input type="text" class="form-control"
						placeholder="Masters Group" path="mastersgroup"
						aria-describedby="basic-addon1" />
					</div>
					
					<div class="form-group">
						<label for="reg_fullname" class="sr-only">University</label>
							<form:input type="text" class="form-control"
						placeholder="University" path="useruniv"
						aria-describedby="basic-addon1" />
					</div>
					
					<div class="form-group">
						<label for="reg_fullname" class="sr-only">UserName</label>
						<form:input type="text" class="form-control" placeholder="username"
						path="username" aria-describedby="basic-addon1" />
					</div>
					
					<div class="form-group">
						<label for="reg_fullname" class="sr-only">Password</label>
						<form:input type="password" class="form-control"
						placeholder="password" path="password"
						aria-describedby="basic-addon1" />
					</div>
					
					
					
					
				</div>
				<button type="submit" class="login-button"><i class="fa fa-chevron-right">SignUp</i></button>
			</div>
			<div class="etc-login-form">
				<p>already have an account? <a href="/BellInfo/signin">login here</a></p>
			</div>
		</form:form>
	</div>
	<!-- end:Main Form -->
</div>