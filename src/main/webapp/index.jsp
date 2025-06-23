<!doctype html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Note Taker : Home Page</title>
	<%@ include file="all_js_css.jsp" %>
	<style>
		body {
			background: #f8f1fc;
			padding-bottom: 60px; /* Extra space at bottom */
			font-family: 'Segoe UI', sans-serif;
		}

		.hero-card {
			background: linear-gradient(135deg, #d6c7f7, #f3e5f5);
			border: none;
			box-shadow: 0 8px 20px rgba(0, 0, 0, 0.1);
			border-radius: 25px;
			text-align: center;
			padding: 30px 20px;
			transition: transform 0.3s;
		}

		.hero-card:hover {
			transform: translateY(-5px);
		}

		.hero-text {
			font-size: 1.3rem;
			color: #6a1b9a;
			font-weight: 500;
			margin-bottom: 1rem;
		}

		.hero-title {
			font-size: 2.2rem;
			font-weight: bold;
			color: #4a148c;
			margin-bottom: 0.5rem;
		}

		.hero-btn {
			background-color: #9b59b6;
			border: none;
			color: white;
			font-weight: bold;
			padding: 10px 25px;
			margin-top: 20px;
			border-radius: 25px;
			transition: background 0.3s ease;
		}

		.hero-btn:hover {
			background-color: #7d3c98;
		}

		.note-icon {
			max-width: 120px;
			border-radius: 50%;
			box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
			margin-bottom: 20px;
		}
	</style>
</head>
<body>
	<div class="container">
		<%@ include file="navbar.jsp" %>

		<div class="d-flex justify-content-center py-5">
			<div class="card hero-card">
				<img src="images/note.png" class="card-img-top note-icon mx-auto" alt="Note icon">
				<div class="card-body">
					<h5 class="hero-title">Welcome to Note Taker</h5>
					<p class="hero-text">Capture ideas. Stay organized. Boost your productivity.</p>
					<a href="add_note.jsp" class="btn hero-btn">Start Taking Notes</a>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
