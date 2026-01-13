<!DOCTYPE html>
    <head>
        <title>Add Notes</title>
        <%@include file="all_js_css.jsp"%>
    </head>

    <body>
        <div class ="container">
                <%@include file="navbar.jsp"%>
        </div>
        <br>
        <h1>please fill your note detail !</h1>
        <br>

        <!-- this is add form -->
        <form action="SaveNoteServlet" method="post">
          <div class="mb-3">
            <label for="title" class="form-label">Note Title</label>
            <input required type="text" class="form-control" id="title" aria-describedby="emailHelp">
          </div>

          <div class="mb-3">
            <label for="content" class="form-label">Note Content</label>
            <textarea required style="height:300px;"class="form-control"id="content" placeholder="Enter your content here"></textarea>
          </div>

          <div class="container text-center">
            <button type="submit" class="btn btn-primary">Add</button>
          </div>
        </form>

    </body>
</html>