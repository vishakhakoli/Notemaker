<%@page import="com.todo.entities.Note"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.todo.util.HibernateUtil"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Edit Note</title>
	<%@ include file="all_js_css.jsp" %>
	<style>
		body {
			background-color: #f5f3ff;
			font-family: 'Segoe UI', sans-serif;
		}
		.form-label {
			font-weight: 500;
			color: #6a1b9a;
		}
		h2 {
			color: #4a148c;
			font-weight: bold;
			text-align: center;
			margin-top: 20px;
		}
		.card-note {
			background: linear-gradient(135deg, #e1bee7, #ede7f6);
			border: none;
			border-radius: 20px;
			box-shadow: 0 6px 20px rgba(0, 0, 0, 0.1);
			padding: 30px;
			margin-top: 40px;
		}
		.btn-primary {
			background-color: #8e44ad;
			border: none;
			font-weight: 500;
		}
		.btn-primary:hover {
			background-color: #6c3483;
		}
	</style>
</head>
<body>

<div class="container">
	<%@ include file="navbar.jsp" %>

	<%
		int noteId = Integer.parseInt(request.getParameter("note_id"));
		Session s1 = HibernateUtil.getSessionFactory().openSession();
		Note note = (Note)s1.get(Note.class, noteId);
		s1.close();
	%>

	<div class="row justify-content-center">
		<div class="col-md-8">
			<div class="card card-note">
				<h2 class="mb-4">Edit your note</h2>
				<form action="UpdateServlet" method="post">
					
					<input value="<%=note.getId()%>" name="id" type="hidden"/>
				
					<div class="mb-3">
						<label for="title" class="form-label">Note Title</label>
						<input type="text" class="form-control" id="title" name="title" required value="<%=note.getTitle()%>"/>
					</div>

					<div class="mb-3">
						<label for="content" class="form-label">Note Content</label>
						<textarea class="form-control" id="content" name="content" style="height: 150px" required><%= note.getContent() %></textarea>
					</div>

					<div class="text-center">
						<button type="submit" class="btn btn-primary px-4">Update Note</button>
					</div>
									
				</form>
			</div>
		</div>
	</div>
</div>

</body>
</html>
