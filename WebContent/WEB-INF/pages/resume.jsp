<div class="container" class="text-center" >
	<div class="col-xs-6">
		<form method="post" action="">

			<div class="input-group input-group-lg">
				<span class="input-group-addon" id="sizing-addon1">Resume
					Description</span> <input type="text" name="email" class="form-control"
					placeholder="Description" aria-describedby="sizing-addon1">
			</div>
			
		</form>

		<form action="/BellInfo/upload" method="post"
			enctype="multipart/form-data">
			<input type="text" name="desc" placeholder="please enter file desc">
			<input type="file" name="uploadedfile">
			<button type="submit">Upload</button>
		</form>
	</div>
</div>