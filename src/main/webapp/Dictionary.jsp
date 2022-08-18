<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.io.Writer" %><%--

--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Dictionary</title>
</head>
<body>
<%!
  Map<String, String> dick = new HashMap<>();
%>

<%
  dick.put("alo", "1234");
  dick.put("hello", "Chao xìn");
  dick.put("book", "Quyễn vỡ");

  String search = request.getParameter("search");

  String result = dick.get(search);
  if (result != null) {
    out.println("Word: " + search + "<br>");
    out.println("Result: " + result);
  } else {
    out.println("Not found");
  }
%>
</body>
</html>
