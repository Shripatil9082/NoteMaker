<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <%@include file="all_js_css.jsp"%>
    <title>Note Taker :  home page</title>
  </head>

  <body>
    <div class ="container">
        <%@include file="navbar.jsp"%>
    </div>
    <br>

    <!-- Hero Section -->
    <div class="container text-center mt-5">
        <h1 class="display-5 fw-bold">📝 Note Taker App</h1>
        <p class="text-muted mt-3">
            A simple web application to create, manage, and organize your notes.
        </p>

        <div class="mt-4">
            <a href="add_notes.jsp" class="btn btn-primary btn-lg me-3">
                ➕ Add Note
            </a>
            <a href="all_notes.jsp" class="btn btn-outline-success btn-lg">
                📒 View Notes
            </a>
        </div>
    </div>

    <!-- Features Section -->
    <div class="container mt-5">
        <h3 class="text-center mb-4">Features</h3>
        <div class="row text-center">
            <div class="col-md-3">
                <h5>✍ Create</h5>
                <p>Add new notes easily</p>
            </div>
            <div class="col-md-3">
                <h5>📖 Read</h5>
                <p>View all saved notes</p>
            </div>
            <div class="col-md-3">
                <h5>✏ Update</h5>
                <p>Edit notes anytime</p>
            </div>
            <div class="col-md-3">
                <h5>🗑 Delete</h5>
                <p>Remove unwanted notes</p>
            </div>
        </div>
    </div>

    <!-- Footer -->
    <footer class="text-center mt-5 mb-3 text-muted">
        <hr>
        <p>Note Taker App | JSP • Servlet • Hibernate • MySQL</p>
    </footer>

  </body>
</html>

