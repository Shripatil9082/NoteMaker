package com.servlets;

import java.io.IOException;
import java.util.Date;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entities.Note;
import com.helper.FactoryProvider;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/UpdateServlet")
public class UpdateServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        try {

            int noteId = Integer.parseInt(req.getParameter("note_id").trim());
            String title = req.getParameter("title");
            String content = req.getParameter("content");


            Session session = FactoryProvider.getFactory().openSession();
            Transaction tx = session.beginTransaction();


            Note note = session.get(Note.class, noteId);


            note.setTitle(title);
            note.setContent(content);
            note.setAddedDate(new Date());


            session.update(note);
            tx.commit();
            session.close();


            resp.sendRedirect("all_notes.jsp");

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
