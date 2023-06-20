<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add Content</title>
</head>
<body>
    <h1>Add Content</h1>
    
    <form action="addContent" method="get">
        <label for="username">Username:</label>
        <input type="text" id="username" name="username" required><br><br>
        
        <label for="title">Title:</label>
        <input type="text" id="title" name="title" required><br><br>
        
        <label for="img">Image URL:</label>
        <input type="text" id="img" name="img" required><br><br>
        
        <label for="content">Content:</label>
        <textarea id="content" name="content" required></textarea><br><br>
        
        <label for="detailTitle">Detail Title:</label>
        <input type="text" id="detailTitle" name="detailTitle" required><br><br>
        
        <label for="contentId">Content ID:</label>
        <input type="text" id="contentId" name="contentId" required><br><br>
        
        <input type="submit" value="Add Content">
    </form>

</body>
</html>
