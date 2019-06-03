<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ page import="com.entity.PageTO"%>

<! DOCTYPE html>
<html>

<head>

<link type="text/css" rel="stylesheet"
	href="emo/assets/css/list_style.css">
<link href='https://fonts.googleapis.com/css?family=Didact Gothic'
	rel='stylesheet'>
<link
	href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap"
	rel="stylesheet">

<title>SharEmo - Free Emoticon Share Website</title>

<script src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript">
<script type="text/javascript">
$(document).ready(function(){  

    
    $(".nav-mid-item>a").hover(function() {
        $(this).css("color", "grey");
        $(this).parent().find(".nav-mid-item-drop").fadeIn('normal').show(); 
        $(this).parent().find(".nav-mid-item-drop li").hover(function() {
            $(this).css("background-color", "#e6e6e6");

            $(this).mouseleave(function() { 
                $(this).css("background-color", "white");
            });                    
        });

        $(this).parent().mouseleave(function() { 
            $(this).find(">a").css("color", "white");
            $(this).find(".nav-mid-item-drop").fadeOut('fast'); 
        });
        
    });  
});  
</script>
</head>

<body>

	<section id="header">
		<div id="navbar-top">
			<a href="main.do"> <img src="emo/images/sharEmo_logo_2.png">
			</a>
			<ul id="navbar-top-right">
				<li class="nav-top-item"><c:choose>
						<c:when test="${user != null}">
							<a href='mypage.do'>${user.id}님</a></li>
				<li class="nav-top-item"><a href='logout.do'> LogOut </a> </c:when> <c:otherwise>
						<a href='loginUI.do'> Login </a>
					</c:otherwise> </c:choose></li>
				<li class="nav-top-item"><a href="signUpUI.do">Sign up</a></li>
			</ul>
		</div>
	</section>

	<nav id="navbar-mid">
		<form action="" method="">
			<input type="search" name="q"
				placeholder="Search for emoticons e.g. happy, sad, angry...">
			<button type="submit">
				<img src="emo/images/musica-searcher.png" width="20px" height="20px">
			</button>
		</form>
		<ul>
			<li class="nav-mid-item"><a href="#">Home</a></li>
			<li class="nav-mid-item"><a href="#">Emotion</a>
				<div class="nav-mid-item-drop">
					<ul>
						<li><a href="#">New</a></li>
						<li><a href="#">Popular</a></li>
						<li><a href="#">Recent</a></li>
						<li><a href="#">Category</a></li>
					</ul>
				</div></li>
			<li class="nav-mid-item"><a href="#">Artist</a>
				<div class="nav-mid-item-drop">
					<ul>
						<li><a href="#">New</a></li>
						<li><a href="#">Popular</a></li>
						<li><a href="#">Recent</a></li>
						<li><a href="#">Most<br />followed
						</a></li>
					</ul>
				</div></li>
			<li class="nav-mid-item"><a href="#">MyGallery</a>
				<div class="nav-mid-item-drop">
					<ul>
						<li><a href="#">Likes</a></li>
						<li><a href="#">Following</a></li>
						<li><a href="#">Upload</a></li>
						<li><a href="#">Gallery</a></li>
					</ul>
				</div></li>
		</ul>
	</nav>

	<section id="container">
		<nav id="nav-mid-left">
			<ul>
				<li><a href="listPage.do">New Emoticon</a></li>
				<li><a href="#">Popular Emoticon</a></li>
				<li><a href="#">Recent Emoticon</a></li>
				<li><a href="#">Category</a></li>
			</ul>
		</nav>
		<section id="content">
			<table>
				<tr>
					<c:forEach var="dto" items="${list}">
						<td><a href="retrieve.do?num=${dto.num}"> <img
								src="emo/images/emoticon_pack/도라에몽/1.png">
						</a>
							<p>
								<a href="retrieve.do?num=${dto.num}">${dto.title}</a><br /> <a
									href="#">작성자 : ${dto.author}</a><br /> <a href="#">조회 수:
									${dto.readcnt}</a>
							</p></td>
					</c:forEach>
					<td><a href="#"><img
							src="emo/images/emoticon_pack/도라에몽/1.png"></a>
						<p>
							<a href="#">Doraemon</a><br /> <a href="#">artist_1</a>
						</p></td>
					<td><a href="#"><img
							src="emo/images/emoticon_pack/돌/1.png"></a>
						<p>
							<a href="#">stone</a><br /> <a href="#">artist_2</a>
						</p></td>
					<td><a href="#"><img
							src="emo/images/emoticon_pack/동물/1.png"></a>
						<p>
							<a href="#">animal</a><br /> <a href="#">artist_3</a>
						</p></td>
					<td><a href="#"><img
							src="emo/images/emoticon_pack/어피치/1.png"></a>
						<p>
							<a href="#">apeach</a><br /> <a href="#">artist_4</a>
						</p></td>
				</tr>
				<tr>
					<td><a href="#"><img
							src="emo/images/emoticon_pack/헬로키티/1.png"></a>
						<p>
							<a href="#">hellocitty</a><br /> <a href="#">artist_5</a>
						</p></td>
					<td><a href="#"><img src="emo/images/emoticon_pack/.png"></a>
						<p>
							<a href="#">title : ...</a><br /> <a href="#">artist : ...</a>
						</p></td>
					<td><a href="#"><img src="emo/images/emoticon_pack/.png"></a>
						<p>
							<a href="#">title : ...</a><br /> <a href="#">artist : ...</a>
						</p></td>
					<td><a href="#"><img src="emo/images/emoticon_pack/.png"></a>
						<p>
							<a href="#">title : ...</a><br /> <a href="#">artist : ...</a>
						</p></td>
				</tr>
				<tr>
					<td><a href="#"><img src="emo/images/emoticon_pack/.png"></a>
						<p>
							<a href="#">title : ...</a><br /> <a href="#">artist : ...</a>
						</p></td>
					<td><a href="#"><img src="emo/images/emoticon_pack/.png"></a>
						<p>
							<a href="#">title : ...</a><br /> <a href="#">artist : ...</a>
						</p></td>
					<td><a href="#"><img src="emo/images/emoticon_pack/.png"></a>
						<p>
							<a href="#">title : ...</a><br /> <a href="#">artist : ...</a>
						</p></td>
					<td><a href="#"><img src="emo/images/emoticon_pack/.png"></a>
						<p>
							<a href="#">title : ...</a><br /> <a href="#">artist : ...</a>
						</p></td>
				</tr>
				<tr>
					<td><a href="#"><img src="emo/images/emoticon_pack/.png"></a>
						<p>
							<a href="#">title : ...</a><br /> <a href="#">artist : ...</a>
						</p></td>
					<td><a href="#"><img src="emo/images/emoticon_pack/.png"></a>
						<p>
							<a href="#">title : ...</a><br /> <a href="#">artist : ...</a>
						</p></td>
					<td><a href="#"><img src="emo/images/emoticon_pack/.png"></a>
						<p>
							<a href="#">title : ...</a><br /> <a href="#">artist : ...</a>
						</p></td>
					<td><a href="#"><img src="emo/images/emoticon_pack/.png"></a>
						<p>
							<a href="#">title : ...</a><br /> <a href="#">artist : ...</a>
						</p></td>
				</tr>
			</table>
			<div id="paging">
				<a href="#"><img src="emo/images/page_left.png"></a>

				<p id="paging">
					<!-- page -->
					<jsp:include page="page.jsp" flush="true" />
				</p>
				<a href="#"><img src="emo/images/page_right.png"></a>
				<!-- 글쓰기 버튼 만들 공간 -->
				<p>
					<input onclick="location.href='writeui.do'"  type="button" value="글쓰기"/> 
				</p>
			</div>
		</section>
		<div id="ad">
			<a href="https://www.idowell.co.kr/home/" target="_blank"><img
				src="emo/images/ad/winnerstel.png"></a><br /> <a
				href="https://www.duo.co.kr/html/love_test/main.asp?u_div=agency1_DA5_2019&utm_medium=double&utm_source=kakao_banner&utm_campaign=DT_%EB%93%80%EC%98%A4pc&utm_term=%EB%A6%AC%ED%83%80%EA%B2%9F"
				target="_blank"><img src="emo/images/ad/duo.jpg"></a>
		</div>
	</section>

	<section id="footer">
		<img src="emo/images/cbnu_white.png" width="221" height="67">
		<p>2019, 오픈소스 전문 프로젝트, TEAM 11, 조 ??</p>
		<p>윤송희 ~ 전준호, 정희주, 장형규</p>
		<p>주소 : 충북 청주시 서원구 충대로 1, 충북대학교 / TEL : 043)261-2114</p>
	</section>

</body>

</html>