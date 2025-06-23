<style>
	.navbar-purple {
		background: linear-gradient(135deg, #9c27b0, #6a1b9a);
	}
	.navbar-brand {
		font-weight: bold;
		color: #fff !important;
		font-size: 1.5rem;
	}
	.navbar-nav .nav-link {
		color: #e1bee7 !important;
		font-weight: 500;
		margin-right: 10px;
	}
	.navbar-nav .nav-link.active,
	.navbar-nav .nav-link:hover {
		color: #ffffff !important;
		background-color: rgba(255, 255, 255, 0.1);
		border-radius: 5px;
	}
	.navbar {
		box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
	}
</style>

<nav class="navbar navbar-expand-lg navbar-purple">
	<div class="container-fluid">
		<a class="navbar-brand" href="index.jsp">Note Taker</a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav ms-auto mb-2 mb-lg-0">
				<li class="nav-item">
					<a class="nav-link active" href="index.jsp">Home</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="add_note.jsp">Add Note</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="all_notes.jsp">Show Notes</a>
				</li>
			</ul>
		</div>
	</div>
</nav>
