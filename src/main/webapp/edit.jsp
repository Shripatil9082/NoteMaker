<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.entities.Note"%>

<!DOCTYPE html>
<html>
<head>
    <title>Edit Note</title>
    <%@include file="all_js_css.jsp"%>
</head>

<body>
<div class="container">
    <%@include file="navbar.jsp"%>
</div>

<%
    int noteId = Integer.parseInt(request.getParameter("note_id"));
    Session s = FactoryProvider.getFactory().openSession();
    Note note = s.get(Note.class, noteId);
    s.close();
%>

<div class="container mt-4">
    <h2>Edit Note</h2>

    <form action="UpdateServlet" method="post">

        <!-- VERY IMPORTANT -->
        <input type="hidden" name="note_id" value="<%= note.getId() %>">

        <div class="mb-3">
            <label class="form-label">Note Title</label>
            <input required name="title" type="text"
                   class="form-control"
                   value="<%= note.getTitle() %>">
        </div>

        <div class="mb-3">
            <label class="form-label">Note Content</label>
            <textarea name="content" required
                      class="form-control"
                      style="height:300px;"><%= note.getContent() %></textarea>
        </div>

        <div class="container text-center">
            <button type="submit" class="btn btn-success">Update</button>
        </div>

    </form>
</div>

</body>
</html>
