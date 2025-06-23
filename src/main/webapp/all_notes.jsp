<%@page import="java.util.List"%>
<%@page import="org.hibernate.Query"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.todo.util.HibernateUtil"%>
<%@page import="com.todo.entities.Note"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All Notes</title>
<%@ include file="all_js_css.jsp" %>
<style>
	body {
		background-color: #f5f3ff;
		font-family: 'Segoe UI', sans-serif;
	}
	h1 {
		color: #4a148c;
		text-align: center;
		margin-top: 20px;
		font-weight: bold;
	}
	.card {
		border: none;
		border-radius: 20px;
		box-shadow: 0 6px 20px rgba(0, 0, 0, 0.1);
		background: linear-gradient(135deg, #e1bee7, #ede7f6);
	}
	.card-title {
		color: #6a1b9a;
		font-weight: bold;
	}
	.card-text {
		color: #4a148c;
	}
	.btn-primary {
		background-color: #8e44ad;
		border: none;
	}
	.btn-primary:hover {
		background-color: #6c3483;
	}
	.btn-danger {
		background-color: #c0392b;
		border: none;
	}
	.btn-danger:hover {
		background-color: #922b21;
	}
</style>
</head>
<body>

<div class="container">
	<%@ include file="navbar.jsp" %>
	<h1 class="mb-4">All Notes</h1>
	
	<div class="row">
		<div class="col-12">
		
		<%
			Session s = HibernateUtil.getSessionFactory().openSession();
			Query q = s.createQuery("from Note");
			List<Note> notes = q.list();
			
			for(Note n : notes) {
		%>

			<div class="card mb-4">
				<div class="row g-0 align-items-center">
					<div class="col-md-2 text-center">
						<img src="images/note.png" style="max-width: 80px;" class="img-fluid m-3" alt="Note Icon">
					</div>
					<div class="col-md-10">
						<div class="card-body">
							<h5 class="card-title"><%= n.getTitle() %></h5>
							<p class="card-text"><%= n.getContent() %></p>
							<p class="card-text text-muted text-end fw-bold"><%= n.getAddedDate() %></p>
							<div class="text-center">
								<a href="update_notes.jsp?note_id=<%=n.getId()%>" class="btn btn-primary me-2">Update</a>
								<a href="DeleteServlet?note_id=<%=n.getId()%>" class="btn btn-danger">Delete</a>
							</div>
						</div>
					</div>
				</div>
			</div>
			<br/>
		<%
			}
			s.close();
		%>

		</div>
	</div>
</div>

</body>
</html>
