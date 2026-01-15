<!DOCTYPE html>
<html>
<head>
    <title>Add Notes</title>
    <%@include file="all_js_css.jsp"%>
</head>

<body>

<div class="container">
    <%@include file="navbar.jsp"%>

    <br>
    <h1>Please fill your note details!</h1>
    <br>

    <!-- Add Note Form -->
    <form action="<%=request.getContextPath()%>/SaveNoteServlet" method="post">

        <div class="mb-3">
            <label for="title" class="form-label">Note Title</label>
            <input required name="title" type="text"
                   class="form-control" id="title"
                   placeholder="Enter here">
        </div>

        <div class="mb-3">
            <label for="content" class="form-label">Note Content</label>
            <textarea name="content" required
                      class="form-control" id="content"
                      style="height:300px;"
                      placeholder="Enter your content here"></textarea>
        </div>

        <div class="container text-center">
            <button type="submit" class="btn btn-primary">Add</button>
        </div>

    </form>
</div>

</body>
</html>
