<!-- <div class="container">
<div class="col-xs-6">
<form method="post" action="/BellInfo/login">
<div class="input-group input-group-lg">
  <span class="input-group-addon" id="sizing-addon1">Email</span>
  <input type="text" name="email" class="form-control" placeholder="Enter Email" aria-describedby="sizing-addon1">
</div>
<br>
<div class="input-group input-group-lg">
  <span class="input-group-addon" id="sizing-addon1">Password</span>
  <input type="password" name="password" class="form-control" placeholder="Enter Password" aria-describedby="sizing-addon1">
</div>
<br>
<button class="btn-success pull-right" type="submit">SignIn</button>
</form>
</div>
</div> -->

 <!--    <!-- LOGIN FORM -->
    <div class="text-center" style="padding:50px 0">
	<div class="logo">login</div>
	<div class="login-form-1">
		<form class="form-signin" action="/BellInfo/login" method="post">
			<div class="login-form-main-message"></div>
			<div class="main-login-form">
				<div class="login-group">
					<div class="form-group">
						<label for="lg_username" class="sr-only">Username</label>
						<input type="text"
				id="username" name="email" class="form-control"
				placeholder="username" required autofocus>
					</div>
					<br>
					<div class="form-group">
						<label for="lg_password" class="sr-only">Password</label>
						<input
				type="password" id="inputPassword" class="form-control"
				placeholder="Password" name="password" required>
					</div>
				</div>
				<button type="submit" class="login-button"><i class="fa fa-chevron-right">Login</i></button>
			</div>
			<div class="etc-login-form">
				<p>new user? <a href="/BellInfo/signup">create new account</a></p>
			</div>
		</form>
	</div>
	
</div> 