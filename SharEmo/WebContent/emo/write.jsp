<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<! DOCTYPE html>
<html>

<head>

<link href='https://fonts.googleapis.com/css?family=Dekko'
	rel='stylesheet'>
<link href='https://fonts.googleapis.com/css?family=Didact Gothic'
	rel='stylesheet'>
<link
	href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap"
	rel="stylesheet">
<link type="text/css" rel="stylesheet"
	href="emo/assets/css/write_style.css">

<title>SharEmo - Free Emoticon Share Website</title>

<script src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript">
	$(document)
			.ready(
					function() {

						$(".nav-mid-item>a")
								.hover(
										function() {
											$(this).css("color", "grey");
											$(this).parent().find(
													".nav-mid-item-drop")
													.slideDown('normal').show();
											$(this)
													.parent()
													.find(
															".nav-mid-item-drop li")
													.hover(
															function() {
																$(this)
																		.css(
																				"background-color",
																				"rgba(255, 255, 255, 0.3)");

																$(this)
																		.mouseleave(
																				function() {
																					$(
																							this)
																							.css(
																									"background-color",
																									"");
																				});
															});

											$(this)
													.parent()
													.mouseleave(
															function() {
																$(this)
																		.find(
																				">a")
																		.css(
																				"color",
																				"white");
																$(this)
																		.find(
																				".nav-mid-item-drop")
																		.slideUp(
																				'fast');
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
		<section id="content">
			<div id="content-wrapper">
				<h2>Share your new COOL emoticon!</h2>
				<form id="frm" name=form1 action='write.do' method=post enctype="">
					<div id="title">
						<label for="title">Title : </label> <input type="text"
							name="title" required>
					</div>
					<p>Artist : ${user.nickname}</p>
					<div id="desc_label">
						<label for="description">Description</label>
						<p>0/500bytes</p>
					</div>
					<textarea name="description" rows="8" cols="100"></textarea>
					<div id="file_label">
						<label for="upload">Upload Images</label> <input type="file"
							name="upload" value="폴더 선택">
					</div>
					<div id="upload_images"></div>
					<span><input type="submit" value="SUBMIT"></span>
				</form>
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