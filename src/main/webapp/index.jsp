<!doctype html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Note Taker : Home Page</title>
	<%@ include file="all_js_css.jsp" %>
	<style>
		.hero-card {
			background: linear-gradient(135deg, #d6c7f7, #f3e5f5);
			border: none;
			box-shadow: 0 4px 8px rgba(0,0,0,0.1);
			border-radius: 20px;
			text-align: center;
			padding: 30px 20px;
			margin-top: 50px;
		}
		.hero-text {
			font-size: 1.4rem;
			color: #6a1b9a;
			font-weight: 500;
		}
		.hero-title {
			font-size: 2rem;
			font-weight: bold;
			color: #4a148c;
		}
		.hero-btn {
			background-color: #9b59b6;
			border: none;
			color: white;
			font-weight: bold;
			padding: 10px 20px;
			margin-top: 20px;
		}
		.hero-btn:hover {
			background-color: #884ea0;
		}
	</style>
</head>
<body>
	<div class="container">
		<%@ include file="navbar.jsp" %>
		<div class="d-flex justify-content-center">
			<div class="card hero-card">
				<img src="images/note.png" class="card-img-top mx-auto" style="max-width: 120px;" alt="Note icon">
				<div class="card-body">
					<h5 class="hero-title">Welcome to Note Taker</h5>
					<p class="hero-text">Capture ideas. Stay organized. Boost your productivity.</p>
					<a href="add_notes.jsp" class="btn hero-btn">Start Taking Notes</a>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
