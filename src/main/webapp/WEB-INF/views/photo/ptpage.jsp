<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>  
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <script src="https://kit.fontawesome.com/8d3fc93edf.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/photoboard.css">
  <script src="${pageContext.request.contextPath}/resources/css/main.js" defer></script>

<title>photo out</title>
</head>
<body>

<!-- header 영역 -->
	<header>
		
		<nav class="navbar">
			<div class="navbar_logo">
				<a href="index"><img src="./resources/image/iulogo.jpg" class="logo">UAENA</a>
			</div>
			
			<ul class="navbar_menu">
				<li><a href="aboutiu">About IU</a></li>
				<li><a href="ntpage">공지사항</a></li>
				<li><a href="melon">앨범소개</a></li>
				<li><a href="bopage">자유게시판</a></li>
				<li><a href="ptpage">포토게시판</a></li>		
				<li><a href="lpage">편지</a></li>
			</ul>
			
			<ul class="navbar_icons">
				<li><a href="https://www.instagram.com/dlwlrma/"><i class="fa-brands fa-instagram"></i></a></li>
				<li><a href="https://www.youtube.com/c/dlwlrma"><i class="fa-brands fa-youtube"></i></a></li>
				<li><a href="https://twitter.com/_IUofficial"><i class="fa-brands fa-twitter"></i></a></li>
				<li></li>
				<c:choose>
				<c:when test="${loginOn == true && member != null }">
						<li>${member.MEM_NICKNAME }님</li>
						<li><a href="logout" >LOGOUT</a></li>
				</c:when>
				<c:otherwise>
					<li><a href="login">LOGIN</a></li>
				</c:otherwise>
				</c:choose>
				
			</ul>
			
			<a href="#" class="navbar_toogleBtn"> <i class="fa-solid fa-bars"></i>
			</a>
		</nav>	
	</header>
<!-- header 영역 끝 -->

<!-- 목록 영역 -->

	<div class="container">
		<div class="cover">
		
			<div class="contents">
			
                <div class="line">
                    <span>포토게시판</span>
                </div>
                
                <!-- 검색 영역 -->
                <form action="ptsearch">
                <ul class="searchbar">
					<li>
						<select name="sname" size="1">
							<option value="PT_TITLE">제목명</option>
							<option value="PT_WRITER">작성자명</option>
						</select>
					</li>
					<li><input class="put" type="text" name="svalue"></li>
					<li><input type="submit" value="검색" class="search-btn"></li>
					<li>
					<a href="ptpage" style="font-size: 19px;"><i class="fa-solid fa-rotate-right"></i></a>
					</li>
				</ul>
				</form>	
				<!-- 검색 영역 끝 -->
			</div>
			
			<!-- main -->
			<div class="main">
				
				<!-- 사진 Grid -->
				<div class="row">
				<c:forEach items="${list}" var="list">
					<div class="column">
						<div class="content">
							<a href="ptdetail?PT_NO=${list.PT_NO}" class="imgbox">
								<img src="./resources/photoimage/${list.PT_PICTURE}" width="154px" height="154px" style="object-fit:cover;">
							</a>
							<h3>${list.PT_TITLE}<span style="color:#DB7093;">[${list.RECNT}]</span> </h3>
							<p>${list.PT_WRITER}</p>
							<p ><i class="fa-solid fa-thumbs-up"></i> ${list.PT_LIKE}</p>
							<p>
								<fmt:parseDate var="dateString" value="${list.PT_WRITEDAY}" pattern="yyyy-MM-dd"/>
        						<fmt:formatDate value="${dateString}" pattern="yyyy-MM-dd"/>
        					</p>
        					<p>
						</div>
					</div>
				</c:forEach>
				</div>
			</div>	
			<!-- main 끝 -->	
			
			<!-- 글쓰기 버튼 -->
			<div class="gotowrite">
			<c:choose>
				<c:when test="${loginOn == true && member != null }">
				<input type="button" value="업로드" onclick="location.href='ptinput'" class="write-btn" style="text-align: center"><br>
				</c:when>
			</c:choose>
			</div>
			<!-- 글쓰기 버튼 끝 -->
			
			<!-- 페이징 처리 -->
      		
      		<div class="page">
  			 <c:forEach begin="${paging.startPage }" end="${paging.endPage}" var="p">
          		<c:choose>
              		<c:when test="${p == 1}">
                   		<a href="ptpage?nowPage=${paging.startPage}"><</a>
              		</c:when>
           		</c:choose>
   			</c:forEach>
      		
		
        	<c:forEach begin="${paging.startPage }" end="${paging.endPage}" var="p"> 
            	<c:choose>
            	    <c:when test="${p == paging.nowPage }">
            	        <a href="javascript://" class="item cl">${p}</a>
            	    </c:when>
            	    <c:when test="${p != paging.nowPage }">
            	        <a href="ptpage?nowPage=${p}&cntPerPage=${paging.cntPerPage}">${p}</a>
            	    </c:when>
            	</c:choose>
        	</c:forEach>
        	
      		<c:forEach begin="${paging.startPage }" end="${paging.endPage}" var="p">
          		<c:choose>
              		<c:when test="${p == 1}">
                   		<a href="ptpage?nowPage=${paging.endPage}">></a>
              		</c:when>
           		</c:choose>
   			</c:forEach>
      		
      		<!-- 페이징 처리 끝 -->
      		
		</div>
	</div>
</div>	
	<!-- 목록 영역 끝 -->
	
	<footer>
		<p>Iu Fanpage</p>
	</footer>			

</body>
</html>