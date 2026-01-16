<%@page import="java.util.List"%>
<%@page import="org.hibernate.query.Query"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.entities.Note"%>

<!DOCTYPE html>
<html>
<head>
    <title>All Notes</title>
    <%@include file="all_js_css.jsp"%>
</head>

<body>
<div class="container">

    <%@include file="navbar.jsp"%>
    <br>

    <h1 class="text-uppercase">All Notes</h1>

    <div class="row">
       <div class="col-12">

                    <%
                    Session s = FactoryProvider.getFactory().openSession();

                    Query<Note> q = s.createQuery("from Note", Note.class);
                    List<Note> list = q.list();

                    for (Note note : list) {
                     %>
                        <div class="card mt-3" >
                          <img src="img/wirte.png" style="max-width:100px;"class="card-img-top m-4 mx-auto" alt="...">
                          <div class="card-body px-5">
                            <h5 class="card-title"><%= note.getTitle()%></h5>
                            <p class="card-text">
                                <%= note.getContent() %>

                            </p>
                            <p><b><%= note.getAddedDate()%><b></p>
                            <div class="container text-center mt-2">
                                <a href="DeleteServlet?note_id=<%=note.getId()%>" class="btn btn-danger">Delete</a>
                                <a href="edit.jsp?note_id=<%=note.getId()%>" class="btn btn-primary">Update</a>
                            </div>
                          </div>
                        </div>
                     <%
                    }

                    s.close();
                %>


       </div>
    </div>


</div>
</body>
</html>
