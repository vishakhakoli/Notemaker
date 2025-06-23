<%@page import="com.todo.entities.Note"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.todo.util.HibernateUtil"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Notes</title>
<%@ include file="all_js_css.jsp" %>
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
	<br/>
	<h2 class="mb-4">Edit notes here...</h2>
	<form action="UpdateServlet" method="post">
		
		<input value="<%=note.getId()%>" id ="id" name ="id" type="hidden"/>
	
		<div class="mb-3">
			<label for="title" class="form-label">Note Title</label>
			<input type="text" class="form-control" id="title" name="title" required  value="<%=note.getTitle()%>"/>
		</div>

		<div class="mb-3">
			<label for="content">Note Content</label>
			<textarea class="form-control" id="content" name="content" style="height: 150px" required><%= note.getContent() %></textarea>

		</div>
		
		<div class="container text-center">
		    <button type="submit" style="background-color:#ff6f61; color: white; border: none;" class="btn">Edit Note</button>
		</div>
						
	</form>
	</div>

</body>
</html>