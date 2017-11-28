<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${ pageContext.request.contextPath }"></c:set>
<!doctype html>
<html lang="ko">
<head>
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
            <li class="pure-menu-item menu-item-divided pure-menu-selected">
                   <a href="${ contextPath }/jsp/translate.jsp" class="pure-menu-link">Translate</a>
                </li>
                <li class="pure-menu-item"><a href="${ contextPath }/jsp/map.jsp" class="pure-menu-link">Map</a></li>
                <li class="pure-menu-item"><a href="${ contextPath }/jsp/search.jsp" class="pure-menu-link">Search</a></li>
  				<c:if test="${user == null }">
                	<li class="pure-menu-item"><a href="${ contextPath }/jsp/login.jsp" class="pure-menu-link">Login</a></li>
                	<li class="pure-menu-item"><a href="${ contextPath }/jsp/signup.jsp" class="pure-menu-link">Sign Up</a></li>
                </c:if>
                
                 <%-- 로그인 로그아웃 메뉴바 바뀌게 --%>
                 <%-- 세션이 있는 경우 --%>
                  <c:if test="${user!=null }">                 
                     <li class="nav-item dropdown"><a
                        class="nav-link dropdown-toggle" role="button" id="dropdown5"
                        data-toggle="dropdown" aria-haspopup="true"
                        aria-expanded="false"> ${user.name }님 </a>
                        <div class="dropdown-menu" aria-labelledby="dropdown5">
                           <a class="dropdown-item" href="${contextPath}/logout.do">로그아웃</a>
                        </div></li>
                  </c:if>
            </ul>
        </div>
    </div>
    
    <div id="main">
        <div class="header">
            <h1>Translate</h1>	
            <h2>번역할 문장을 입력해주세요</h2>
        </div>	
        
        <div style="display: flex; justify-content: center; margin:left:;">
          <form id ="TranslateForm" method="post" action="translate.do" style="width: 400px;"> 
                       <input style="width: 100%; height: 200px; text-align: center;" name="text"id="text" class="type form-control" placeholder="번역할 문장을 입력해 주세요" name="before" id="before" /autofocus required>
          </form>
          <br>
          </div>
          <p style="text-align: center;">${ tranlatedText}</p>
      
<script src="js/ui.js"></script>
</body>
</html>
