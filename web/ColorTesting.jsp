<%--
  Created by IntelliJ IDEA.
  User: student
  Date: 24.10.2017
  Time: 11:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Color Testing</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: <%= request.getParameter("bgColor") != null ? request.getParameter("bgColor") : "#ADD8E6" %>;
            color: #333;
            font-family: 'Roboto', sans-serif;
        }
        .message {
            text-align: center;
            margin-top: 20%;
            font-size: 1.5rem;
        }
    </style>
</head>
<body>
<div class="message">
    <%
        String bgColor = request.getParameter("bgColor");
        if (bgColor != null) {
            out.println("Chosen background color is " + bgColor + ".");
        } else {
            out.println("Default background color is light blue.");
        }
    %>
</div>
</body>
</html>