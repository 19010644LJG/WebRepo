<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${ pageContext.request.contextPath }" />
<!DOCTYPE html>
<html> 
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>LogIn</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
<link rel="stylesheet" href="${ contextPath }/css/signin.css">
</head>
<body>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="A layout example with a side menu that hides on mobile, just like the Pure website.">
    <title>Responsive Side Menu &ndash; Layout Examples &ndash; Pure</title>
    
    <link rel="stylesheet" href="https://unpkg.com/purecss@1.0.0/build/pure-min.css" integrity="sha384-" crossorigin="anonymous">
    
   
    
        <!--[if lte IE 8]>
            <link rel="stylesheet" href="css/layouts/side-menu-old-ie.css">
        <![endif]-->
        <!--[if gt IE 8]><!-->
            <link rel="stylesheet" href="${ contextPath }/css/layouts/side-menu.css">
        <!--<![endif]-->
</head>
<body>
<div id="layout">
    <!-- Menu toggle -->
    <a href="#menu" id="menuLink" class="menu-link">
        <!-- Hamburger icon -->
        <span></span>
    </a>		

    <div id="menu">
        <div class="pure-menu">
            <a class="pure-menu-heading" href="${ contextPath }/jsp/index.jsp">Web Master</a>

            <ul class="pure-menu-list">
                <li class="pure-menu-item"><a href="${ contextPath }/jsp/translate.jsp" class="pure-menu-link">Translate</a></li>
                <li class="pure-menu-item"><a href="${ contextPath }/jsp/map.jsp" class="pure-menu-link">Map</a></li>
                <li class="pure-menu-item"><a href="${ contextPath }/jsp/search.jsp" class="pure-menu-link">Search</a></li>
                <li class="pure-menu-item menu-item-divided pure-menu-selected">
                    <a href="${ contextPath }/jsp/login.jsp" class="pure-menu-link">Login</a>
                </li>
                <li class="pure-menu-item"><a href="${ contextPath }/jsp/signup.jsp" class="pure-menu-link">Sign Up</a></li>
            </ul>
        </div>
    </div>
<div class="container">

  <form class="form-signin" action="${ contextPath }/login.do" method="post">
    <h2 class="form-signin-heading">Please sign in</h2>
    
    <label for="inputEmail" class="sr-only">Email address</label>
    <input value='${ param.id }' type="email" name="id" id="inputEmail" class="form-control" placeholder="Email address" required autofocus>
    
    <label for="inputPassword" class="sr-only">Password</label>
    <input value='${ param.pwd }' type="password" name="pwd" id="inputPassword" class="form-control" placeholder="Password" required>

    <button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
  </form>

</div>

<%@ include file="modal.jsp" %>

<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>

<c:if test="${ error != null }">
	<script>
		<%-- 로그인이 실패한 경우 처리 추가 --%>
		var myModal = $('#myModal');
		myModal.find('.modal-title').text('Login Error');
		myModal.find('.modal-body').text('${ error }');
		myModal.modal();
	</script>
</c:if>

</body>
</html>	