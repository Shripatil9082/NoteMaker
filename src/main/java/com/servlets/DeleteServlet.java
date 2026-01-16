package com.servlets;

import com.entities.Note;
import com.helper.FactoryProvider;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.hibernate.Session;
import org.hibernate.Transaction;

import java.io.IOException;
@WebServlet("/DeleteServlet")
public class DeleteServlet extends HttpServlet {
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

            try {
                int noteId=Integer.parseInt(req.getParameter("note_id").trim());

                Session s = FactoryProvider.getFactory().openSession();
                Transaction tx=s.beginTransaction();
                Note note= (Note)s.get(Note.class , noteId);
                s.delete(note);
                tx.commit();
                s.close();
                resp.sendRedirect("all_notes.jsp");

            } catch (Exception e) {
                throw new RuntimeException(e);
            }
    }
}
