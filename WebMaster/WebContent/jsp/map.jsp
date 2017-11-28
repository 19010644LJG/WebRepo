<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${ pageContext.request.contextPath }"></c:set>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
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
                <li class="pure-menu-item menu-item-divided pure-menu-selected">
                    <a href="${ contextPath }/jsp/map.jsp" class="pure-menu-link">Map</a>
                </li>
                <li class="pure-menu-item"><a href="${ contextPath }/jsp/search.jsp" class="pure-menu-link">Search</a></li>
               <c:if test="${ empty user }">
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
            <h1>Map</h1>	
      
<script src="https://openapi.map.naver.com/openapi/v2/maps.js?clientId=sxtGKSG8jcbx3XrRUbRY"></script>
<!-- 아래 div 에 지도를 생성합니다 -->
<div id="nmap" style="width:800px; height:600px;"></div>

<script type="text/javascript">

	// 아주 간단한 지도 생성 예제
	new nhn.api.map.Map('nmap', { // nmap 은 지도가 생성될 요소의 id값 입니다 (원하시는 데로 네이밍!)
		point : new nhn.api.map.LatLng(37.3422069, 126.8320252	) // 위도, 경도 설정 (이 값을 가운데로 하여 지도 생성)
	});

</script>
<script src="js/ui.js"></script>

</body>
</html>

</body>
</html>