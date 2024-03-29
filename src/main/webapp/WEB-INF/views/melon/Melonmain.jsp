<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>  
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<meta name="viewport" content="width=device=width, initial-scale=1.0"/>
	<script src="https://kit.fontawesome.com/8d3fc93edf.js" crossorigin="anonymous"></script>
	<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/melonmain.css">
	<script src="${pageContext.request.contextPath}/resources/css/main.js" defer></script>
<title>Melon main</title>
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
				<li><a href="https://www.instagram.com/dlwlrma/"><i
						class="fa-brands fa-instagram"></i></a></li>
				<li><a href="https://www.youtube.com/c/dlwlrma"><i
						class="fa-brands fa-youtube"></i></a></li>
				<li><a href="https://twitter.com/_IUofficial"><i
						class="fa-brands fa-twitter"></i></a></li>
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
			
			<a href="#" class="navbar_toogleBtn"> 
				<i class="fa-solid fa-bars"></i>
			</a>
		</nav>	
	</header>
<!-- header 영역 끝 -->

    <div class="container">
        
        <div class="line">
            <span> ALBUM</span>
            <p>
                "매력적인 음색과 뛰어난 작사,작곡 능력을 가진 아이유의 음악을 들어보세요"
            </p>
        </div>




        <div class="image-grid">
            <div class="imageall">
                <a href="jogak" class="img-box" ><img src="melonimage/조각.jpg">
                    <div class="image-overlay">
                        <div class="image-title">스페셜 EP</div>
                        <p class="image-contents">조각집</p>
                    </div>
                </a>

            </div>

            <div class="imageall">
                <a href="straw" class="img-box"><img src="melonimage/strawcover.jpg">
                    <div class="image-overlay">
                        <div class="image-title">싱글</div>
                        <p class="image-contents">strawberry moon</p>
                    </div>
                </a>
            </div>

            <div class="imageall">
                <a href="lilac" class="img-box"><img src="melonimage/lilac.jpg">
                    <div class="image-overlay">
                        <div class="image-title">정규</div>
                        <p class="image-contents">LILAC</p>
                    </div>
                </a>
            </div>

            <div class="imageall">
                <a href="cele" class="img-box"><img src="melonimage/celecover.jpg">
                    <div class="image-overlay">
                        <div class="image-title">미니</div>
                        <p class="image-contents">celebrity</p>
                    </div>
                </a>
            </div>

            <div class="imageall">
                <a href="eight" class="img-box"><img src="melonimage/에잇.jpg">
                    <div class="image-overlay">
                        <div class="image-title">싱글</div>
                        <p class="image-contents">에잇</p>
                    </div>
                </a>
            </div>

            <div class="imageall">
                <a href="lovepoem" class="img-box"><img src="melonimage/lovepoem.jpg">
                    <div class="image-overlay">
                        <div class="image-title">EP</div>
                        <p class="image-contents">Love poem</p>
                    </div>
                </a>
            </div>

            <div class="imageall">
                <a href="bi" class="img-box"><img src="melonimage/bibi.jpg">
                    <div class="image-overlay">
                        <div class="image-title">싱글</div>
                        <p class="image-contents">삐삐</p>
                    </div>
                </a>
            </div>

            <div class="imageall">
                <a href="flower2" class="img-box"><img src="melonimage/꽃갈피2.jpg">
                    <div class="image-overlay">
                        <div class="image-title">EP</div>
                        <p class="image-contents">꽃갈피 둘</p>
                    </div>
                </a>
            </div>

            <div class="imageall">
                <a href="palette" class="img-box"><img src="melonimage/palette.jpg">
                    <div class="image-overlay">
                        <div class="image-title">정규</div>
                        <p class="image-contents">Palette</p>
                    </div>
                </a>
            </div>

            <div class="imageall">
                <a href="nletter" class="img-box"><img src="melonimage/밤편지.jpg">
                    <div class="image-overlay">
                        <div class="image-title">싱글</div>
                        <p class="image-contents">밤편지</p>
                    </div>
                </a>
            </div>

            <div class="imageall">
                <a href="chatshire" class="img-box"><img src="melonimage/23.jpg">
                    <div class="image-overlay">
                        <div class="image-title">EP</div>
                        <p class="image-contents">CHAT-SHIRE</p>
                    </div>
                </a>
            </div>

            <div class="imageall">
                <a href="mind" class="img-box"><img src="melonimage/마음.jpg">
                    <div class="image-overlay">
                        <div class="image-title">싱글</div>
                        <p class="image-contents">마음</p>
                    </div>
                </a>
            </div>

            <div class="imageall">
                <a href="flower1" class="img-box"><img src="melonimage/꽃갈피1.jpg">
                    <div class="image-overlay">
                        <div class="image-title">EP</div>
                        <p class="image-contents">꽃갈피</p>
                    </div>
                </a>
            </div>

            <div class="imageall">
                <a href="modern2" class="img-box"><img src="melonimage/moden2.jpg">
                    <div class="image-overlay">
                        <div class="image-title">정규</div>
                        <p class="image-contents">Modern Times</p>
                    </div>
                </a>
            </div>

            <div class="imageall">
                <a href="modern1" class="img-box"><img src="melonimage/moden1.jpg">
                    <div class="image-overlay">
                        <div class="image-title">정규</div>
                        <p class="image-contents">Modern Times-Epiloque</p>
                    </div>
                </a>
            </div>

            <div class="imageall">
                <a href="20spring" class="img-box"><img src="melonimage/20봄.jpg">
                <div class="image-overlay">
                    <div class="image-title">싱글</div>
                    <p class="image-contents">스무 살의 봄</p>
                </div>
                </a>
            </div>

            <div class="imageall">
                <a href="lastfantasy" class="img-box"><img src="melonimage/lastfantasy.jpg">
                    <div class="image-overlay">
                        <div class="image-title">정규</div>
                        <p class="image-contents">Last Fantasy</p>
                    </div>
                </a>
            </div>

            <div class="imageall">
                <a href="realplus" class="img-box"><img src="melonimage/real+.jpg">
                    <div class="image-overlay">
                        <div class="image-title">싱글</div>
                        <p class="image-contents">Real+</p>
                    </div>
                </a>
            </div>

            <div class="imageall">
                <a href="real" class="img-box"><img src="melonimage/real.jpg">
                    <div class="image-overlay">
                        <div class="image-title">EP</div>
                        <p class="image-contents">Real</p>
                    </div>
                </a>
            </div>

            <div class="imageall">
                <a href="jan" class="img-box"><img src="melonimage/잔소리.jpg">
                    <div class="image-overlay">
                        <div class="image-title">싱글</div>
                        <p class="image-contents">잔소리</p>
                    </div>
                </a>
            </div>

            <div class="imageall">
                <a href="iuim" class="img-box"><img src="melonimage/iuim.jpg">
                    <div class="image-overlay">
                        <div class="image-title">EP</div>
                        <p class="image-contents">IU...IM</p>
                    </div>
                </a>
            </div>

            <div class="imageall">
                <a href="grup" class="img-box"><img src="melonimage/grup.jpg">
                    <div class="image-overlay">
                        <div class="image-title">정규</div>
                        <p class="image-contents">Growing Up</p>
                    </div>
                </a>
            </div>


            <div class="imageall">
                <a href="lost" class="img-box"><img src="melonimage/lost.jpg">
                    <div class="image-overlay">
                        <div class="image-title">EP</div>
                        <p class="image-contents">Lost And Found</p>
                    </div>
                </a>
            </div>

        </div>



    </div>

    <footer>

        <p>Iu Fanpage</p>
    </footer>