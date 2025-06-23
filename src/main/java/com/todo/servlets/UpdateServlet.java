package com.todo.servlets;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import com.todo.entities.Note;
import com.todo.util.HibernateUtil;


public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public UpdateServlet() {
        super();
       
    }


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			int NoteId = Integer.parseInt(request.getParameter("id"));
			String noteTitle = request.getParameter("title");
			String noteContent = request.getParameter("content");
			
			Session session = HibernateUtil.getSessionFactory().openSession();
			Transaction tx= session.beginTransaction();
			
			Note note = session.get(Note.class,NoteId);
			
			note.setTitle(noteTitle);
			note.setContent(noteContent);
			note.setAddedDate(new Date());

			tx.commit();
			session.close();
			
			response.sendRedirect("all_notes.jsp");
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
