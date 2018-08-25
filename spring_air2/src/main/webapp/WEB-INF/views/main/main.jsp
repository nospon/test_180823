<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
 <link rel="icon" type="image/ico"  href="resources/image/main_images/Favicon.ico"/>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Spring Air</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/main.css" type="text/css">  

</head>
<style>


body{
background-image: url('resources/image/main_images/main_header.png'),url('resources/image/main_images/main_footer.png');
background-repeat: repeat-x;
background-position: left top,left bottom;
}


/*배너*/

.banner_ul {
  list-style-type: none;
  padding: 0;
  margin: 0;
}

.banner_ul>li {
  border: 1px solid #ddd;
  margin-top: -1px; 
  background-image: url('resources/image/main_images/main_banner.png'); 
  background-repeat: no-repeat;
  padding: 57px;
  text-decoration: none;
  font-size: 18px;
  color: black;
  display: block;
  position: relative;
}

.close {
  cursor: pointer;
  position: absolute;
  top: 10%;
  right: 0%;
  padding: 12px 16px;
  transform: translate(0%, -50%);
}


</style>
<title>Insert title here</title>
</head>
<body>




<div id="wrapper">
<!-- header -->
<div class="header">

<% Object id =session.getAttribute("login"); %>
<% if(id == null){ %>   	
		<span class="header_line">|</span>
		<a href="/join.do">회원가입</a>
		<span class="header_line">|</span>
		<a href="/login.do">로그인</a>
<%}else{ %>
		<span class="header_line">|</span>
		<a href="/logout.do">로그아웃</a>
<%} %>
		<span class="header_line">|</span>
		<a href="#">고객센터</a>
		<span class="header_line">|</span>
		<a href="#ccc">사이트맵
		<span class="header_line">|</span></a>&nbsp;&nbsp;
</div>




<!-- nav -->
	<div class="nav"> 
	
	
	<div class="navbar">
	<div class="navbar_home">
	<a href="#"><img src="resources/image/main_images/logo.PNG" height="70px" width="212px"></a></div>
  	
  	<div class="dropdown">  	
    <button class="dropbtn"><br><b>항공권 예매</b>     
    </button>
    <div class="dropdown-content">
    <div class="menu_header">
    
    <div id="table">
<div class="row">
<span class="cell col1"><a href="#">항공권 예매</a></span>
<span class="cell col2"><a href="/seatlist.do">예매내역 확인</a></span>
<span class="cell col3"><a href="#">공지사항</a></span>
</div>

<div class="row">
<span class="cell col1"><a href="#">스케줄 조회</a></span>
<span class="cell col2"><a href="#">회원정보 수정</a></span>
<span class="cell col3"><a href="board/boardmain.do">고객 센터</a></span>


</div>    
</div>
</div> 
</div>   
</div> 

<div class="dropdown">
    <button class="dropbtn"><br><b>마이 페이지</b>    
    </button>
    <div class="dropdown-content">
    <div class="menu_header">
    
       <div id="table">
<div class="row">
<span class="cell col1"><a href="#">항공권 예매</a></span>
<span class="cell col2"><a href="/seatlist.do">예매내역 확인</a></span>
<span class="cell col3"><a href="#">공지사항</a></span>
</div>

<div class="row">
<span class="cell col1"><a href="#">스케줄 조회</a></span>
<span class="cell col2"><a href="#">회원정보 수정</a></span>
<span class="cell col3"><a href="board/boardmain.do">고객 센터</a></span>


</div>    
</div>
</div> 
</div> 
</div>   



<div class="dropdown">
    <button class="dropbtn"><br><b>기타 페이지</b>  
    </button>
    <div class="dropdown-content">
    <div class="menu_header">
    
       <div id="table">
<div class="row">
<span class="cell col1"><a href="#">항공권 예매</a></span>
<span class="cell col2"><a href="#">예매내역 확인</a></span>
<span class="cell col3"><a href="#">공지사항</a></span>
</div>

<div class="row">
<span class="cell col1"><a href="#">스케줄 조회</a></span>
<span class="cell col2"><a href="#">회원정보 수정</a></span>
<span class="cell col3"><a href="board/boardmain.do">고객 센터</a></span>


</div>    
</div>
</div> 
</div> 
</div>   
</div> 	
</div>
</div>


<!-- content -->
	<div class="content">		
	<!-- 예매창  -->	
	<div id="menubar">
	<!-- content 1 -->	
	<div id="con1">	
	
	
	



	
	</div> 		
	</div> 
	
	
	
		
	<!-- content 2 시작 -->	
	<div class="slideshow-container">

<div class="mySlides fade"> 
  <img src="resources/image/main_images/main_top3.PNG" style="width:100%"> 
</div>

<div class="mySlides fade">  
  <img src="resources/image/main_images/main_top2.PNG" style="width:100%">  
</div>

<div class="mySlides fade">
  <img src="resources/image/main_images/main_top1.PNG" style="width:100%"> 
</div>



<a class="prev" onclick="plusSlides(-1)">&#10094;</a>
<a class="next" onclick="plusSlides(1)">&#10095;</a>

</div>
<br>

<div style="text-align:center">
  <span class="dot" onclick="currentSlide(1)"></span> 
  <span class="dot" onclick="currentSlide(2)"></span> 
  <span class="dot" onclick="currentSlide(3)"></span> 

</div>	
	<br><br>
	

	<!-- content 2 끝 -->	
	<!-- 배너 -->
	<ul class="banner_ul">
 	<li><span class="close">&times;</span></li> 
	</ul>
	
	<script>
var closebtns = document.getElementsByClassName("close");
var i;

for (i = 0; i < closebtns.length; i++) {
  closebtns[i].addEventListener("click", function() {
    this.parentElement.style.display = 'none';
  });
}
</script>
	<!-- 배너 끝 -->
	
	<br><br>
	<!-- content 3 -->
	<div class="con3">
	<h2>이벤트</h2><hr><br>
		
	<!-- content 3-1 -->
		<div class="con3_border1"><a href="#">
			<img src="resources/image/main_images/main_event1.PNG" alt="신규취항 이벤트" width="270px"
				height="180px"><br> <br> <span class="con3_btn1">특가
				이벤트</span>
			<h5>서울>LA 신규취항 이벤트</h5>
			<span class="con3_font">2018.09.08~2018.10.18</span><br> <br>
			<br>
		</a></div>

		
	<!-- content 3-2 -->
		<div class="con3_border2"><a href="#">
			<img src="resources/image/main_images/main_event3.PNG" alt="특별한 혜택" width="270px"
				height="178px"><br> <br> <span class="con3_btn2">홍보/안내</span>
			<h5>SPRING AIR만의 특별한 혜택!!</h5>
			<span class="con3_font">"두근두근" 설레는 여행! SPRING AIR와 함께 하세요</span><br>
			<br> <br>
		</a></div>
	
	
	<!-- content 3-3 -->
		<div class="con3_border2"><a href="#">
			<img src="resources/image/main_images/main_event2.PNG" alt="1주년 기념 특가 이벤트" width="270px"
				height="178px"><br> <br> <span class="con3_btn1">특가
				이벤트</span>
			<h5>1주년 기념 특가 이벤트</h5>
			<span class="con3_font">2018.09.03~2018.09.23</span><br> <br>
			<br>
		</a></div>
		
		
	<!-- content 3-4 -->
		<div class="con3_border2"><a href="#">
			<img src="resources/image/main_images/main_event4.PNG" alt="특별한 혜택" width="270px"
				height="180px"><br> <br> <span class="con3_btn2">홍보/안내</span>
			<h5>짠내투어 in 홍콩</h5>
			<span class="con3_font">SPRING X 홍콩덕링크루즈 EVENT</span><br>
			<br> <br>
			</a></div>	
			
	
		
		
	
		
	</div>
	
	
	<!-- 공지사항 -->
	<div class="notice">
	　　　　　　
	<h2>공지사항</h2>	
	<a onclick="this.nextSibling.style.display=(this.nextSibling.style.display=='none')?'block':'none';" href="javascript:void(0)"> 
<hr>　　　
공지사항&nbsp;<img src="resources/image/main_images/arrow-down.png" width=10px;> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;　　　　　　　　　　　　　　　　　　　　　　　　　　
새로운 공지가 추가되었습니다 <hr>
</a><div style="DISPLAY: none">
<table>

<tr>
<td>　　　　
</td>　　
<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;　　　　　
<a href="#">마닐라(MNL)공항 폐쇄 관련 안내&nbsp;<img src="resources/image/main_images/new.png"></a></td>
<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;　　　　　　　
</td>
<td>2018.08.15</td>
</tr>
<tr>
<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;　　　　　　　　　　　　　　　　　　　　　　
</td>
<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;　　　　　
<a href="#">스프링에어 신입/경력사원 상시채용&nbsp;<img src="resources/image/main_images/new.png"></a></td>
<td>&nbsp;&nbsp;&nbsp;　　　　　　　　　　　　　　　
</td>
<td>2018.08.20</td>
</tr>
<tr>
<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;　　　　　　　　　　　　　　　　　　　　
</td>
<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;　　　　　
<a href="#">신규취항 이벤트 관련 공지&nbsp;<img src="resources/image/main_images/new.png"></a></td>
<td>&nbsp;&nbsp;&nbsp;　　　　　　　　　　　　　　　
</td>
<td>2018.08.20</td>
</tr>

</table>
</div></div><br><br>	
	<!-- //공지사항 끝 -->
	<!-- content 4 -->
	<div class="con4"><br>
		<ul>
			<li><b>고객 서비스&nbsp;</b></li>
			<li><a href="#">|&nbsp;&nbsp;공지사항&nbsp;
			<span class="con4_bar">|</span></a></li>
			<li><a href="#">&nbsp;문의사항&nbsp;
			<span class="con4_bar">|</span></a></li>
			<li><a href="#">&nbsp;자주 묻는 질문&nbsp;
			<span class="con4_bar">|</span></a></li>			
		</ul>
	
	<br><br>
	
	<!-- 사이트맵 -->
	<div id="sitemap_table">
	<div class="row" id="ccc">
	<span class="cell col11"><b>항공권 예매</b></span>
	<span class="cell col12"><b>마이 페이지</b></span>
	<span class="cell col13"><b>기타페이지</b></span>
	<span class="cell col14"><a href="#"></a></span>
</div>

<div class="row">
	<span class="cell col11">&nbsp;</span>
	<span class="cell col12">&nbsp;</span>
	<span class="cell col13">&nbsp;</span>
	<span class="cell col14">&nbsp;</span>
</div>

<div class="row">
	<span class="cell col11"><a href="#">항공권 예매</a></span>
	<span class="cell col12"><a href="#">예매내역 확인</a></span>
	<span class="cell col13"><a href="#">공지사항</a></span>
	<span class="cell col14"><a href="logic/login.do">로그인</a></span>
</div>



<div class="row">
	<span class="cell col11"><a href="#">스케줄 조회</a></span>
	<span class="cell col12"><a href="#">회원정보 수정</a></span>
	<span class="cell col13"><a href="board/boardmain.do">고객 센터</a></span>
	<span class="cell col14"><a href="/join.do">회원가입</a></span>
</div>
</div><br><br>
</div>
</div>

<div class="footer"> 
<div class="footer_font">
<ul class="footer_ul">
<br><br>
<li class="footer_li"><a href="#"></a><img src="resources/image/main_images/logo1.png" width="200" height="66"></a></li>
<li class="footer_li">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
<li class="footer_li">대표이사 김새봄 | 사업자등록번호 : 010-1234-05678 | 통신판매업신고번호 : 2018-서울중구-2018<br>
서울시 중구 봄나들이길 스프링에어 본사 3층 | TEL : 1577-1577 개인정보 관리책임자 노책임<br>
예약센터│7135-2105(월,수,금  PM 21:00 ~ AM 05:00) 담당자 밤새봄 팀장<br>
COPYRIGHT ⓒ 2018 SPRING AIR ALL RIGHTS RESERVED.<br><li>
<li class="footer_li">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
<li class="footer_li"><a href="https://www.0404.go.kr/dev/main.mofa/" target="_blank"><img src="resources/image/main_images/foreignLogo.png"></a></li>
<li class="footer_li">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
<li class="footer_li"><img src="resources/image/main_images/isms_mark.png"></li>
<li class="footer_li">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
<li class="footer_li"><img src="resources/image/main_images/waMark.png"></li>
</ul></div>
</div>

    



<script>
var slideIndex = 1;
showSlides(slideIndex);

function plusSlides(n) {
  showSlides(slideIndex += n);
}

function currentSlide(n) {
  showSlides(slideIndex = n);
}

function showSlides(n) {
  var i;
  var slides = document.getElementsByClassName("mySlides");
  var dots = document.getElementsByClassName("dot");
  if (n > slides.length) {slideIndex = 1}    
  if (n < 1) {slideIndex = slides.length}
  for (i = 0; i < slides.length; i++) {
      slides[i].style.display = "none";  
  }
  for (i = 0; i < dots.length; i++) {
      dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block";  
  dots[slideIndex-1].className += " active";
}







</script>      
</body>
</html>


