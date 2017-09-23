<!-- Based off the original date picker: http://bootsnipp.com/snippets/featured/simple-datepicker-with-momentjs -->

<div class="thumbnail">

	<div class="container">
		<div class="row">
			
			<div class="col-sm-offset-2 col-sm-3">
				<h2>Select Date</h2>
				<hr />
				
				<div class="date-picker" data-date="2014-02-03">
					<div class="date-container">
						<h3 class="date">
							<span data-toggle="datepicker" data-method="subtract"
								data-type="d" class="fa fa-angle-left"></span> <span
								class="text">17th</span> <span data-toggle="datepicker"
								data-method="add" data-type="d" class="fa fa-angle-right"></span>
						</h3>
						<h2 class="month">
							<span data-toggle="datepicker" data-method="subtract"
								data-type="M" class="fa fa-angle-left"></span> <span
								class="text">December</span> <span data-toggle="datepicker"
								data-method="add" data-type="M" class="fa fa-angle-right"></span>
						</h2>
						<h3 class="year">
							<span data-toggle="datepicker" data-method="subtract"
								data-type="y" class="fa fa-angle-left"></span> <span
								class="text">2014</span> <span data-toggle="datepicker"
								data-method="add" data-type="y" class="fa fa-angle-right"></span>
						</h3>
					</div>
				</div>
				
			</div>
			


			<div class="col-sm-offset-2 col-sm-3">
				<h3>Select time for Proxy</h3>
				<hr />
				<h4>From Time</h4>
				<div class="input-group bootstrap-timepicker timepicker">
					<input id="timepicker1" type="text"
						class="form-control input-small"> <span
						class="input-group-addon"><i
						class="glyphicon glyphicon-time"></i></span>
				</div>


				<h4>To Time</h4>
				<div class="input-group bootstrap-timepicker timepicker">
					<input id="timepicker1" type="text"
						class="form-control input-small"> <span
						class="input-group-addon"><i
						class="glyphicon glyphicon-time"></i></span>
				</div>

				<script type="text/javascript">
					$('#timepicker1').timepicker();
				</script>





			</div>


		</div>
	</div>
</div>




<div class="thumbnail">



<div class="container" class="text-center">
	<div class="col-md-5">
		<div class="form-area">
			<form role="form" action="/BellInfo/proxy" method="post">
				<br style="clear: both">
				<h3 style="margin-bottom: 25px; text-align: center;">Request
					Proxy by Mail</h3>
				<div class="form-group">
					<input type="text" class="form-control" id="name" name="name"
						placeholder="Name" required autofocus></input>
				</div>

				<div class="form-group">

					<textarea type="text" class="form-control" id="name" name="subject"
						placeholder="Name" required autofocus rows="10" cols="50"></textarea>

					<!-- <input type="text" class="form-control" id="name" name="subject" placeholder="Name" required autofocus></input>                 
                     -->
				</div>

				<button type="submit" id="submit" name="submit"
					class="btn btn-primary pull-right">Request Proxy</button>
			</form>
		</div>
	</div>
</div>
</div>