<%@ page language="java" contentType="text/html;  q=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="org.dimigo.vo.UserVO"%>
<!DOCTYPE html>
<html style="width: 838px; height: 234px; ">
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/blogbasic.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
</head>
<body>
<ul class="nav nav-tabs">
  <li class="nav-item">
    <a class="nav-link active" href="blogbasic.jsp">Home</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="Career.html">Career</a>	
  </li>
  <li class="nav-item">
    <a class="nav-link" href="Com_Security.html">Computer Security</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="HarryPotter.html">Harry Potter</a> 
  </li>
  <li class="nav-item">	
    <a class="nav-link" href="Register.html">Register</a>
     </li>
  <li class="nav-item">
  <% 
  UserVO a = (UserVO)request.getSession().getAttribute("user");
  if(a==null){%>
    <a class="nav-link" href="login.jsp">login</a>
    <%
    }else{ %>
    <a class="nav-link" href="/WebClass/bloglogout">로그아웃 하기</a>
    <a class="nav-link" href="#">로그인 되었습니다.<%=a.getName()%>님 환영합니다.</a>
    <%} %>
     
</ul>
<h1>Welcome!</h1>
</body>
</html>