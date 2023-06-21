<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Update Content</title>
  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

  <!-- Your additional head content here -->
  
  <!-- Back to Content Creator button -->
  <style>
    .back-btn {
      position: absolute;
      top: 20px;
      left: 20px;
    }
  </style>
</head>
<body>
  <a href="Content_Creator.jsp" class="btn btn-default back-btn">Back to Content Creator</a>

  <div class="container">
    <form action="updateContentAction" method="post">
      <input type="hidden" name="contentId" value="${param.contentId}" />
      <div class="form-group">
        <label for="title">Title:</label>
        <input type="text" class="form-control" id="title" name="title" value="${param.title}" />
      </div>
      <div class="form-group">
        <label for="img">Image URL:</label>
        <input type="text" class="form-control" id="img" name="img" value="${param.img}" />
      </div>
      <div class="form-group">
        <label for="content">Content:</label>
        <textarea class="form-control" id="content" name="content">${param.content}</textarea>
      </div>
      <button type="submit" class="btn btn-primary">Update</button>
    </form>
  </div>

  <!-- Bootstrap JS -->
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</body>
</html>
