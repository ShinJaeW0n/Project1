<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>    
<%@ page import = "java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%	request.setCharacterEncoding("UTF-8");
	
	
%>     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">

<!-- Style -->
<link rel="stylesheet" href="css/content5.css">

<title>이벤트 리뷰 게시판</title>

</head>
<body>
	
	<!-- 왼쪽 메뉴창 -->
	<header id="header">
		<div class="leftMenu">올리브영</div>	
	</header>
			
		<!-- 와이드 메뉴 -->	
		<div id="container">
		 <div class="wideContent">
			<div class="upMenu" id="up">
			 <h2 class="topTitle">이벤트</h2>
				<ul>
					<li><a href="main.do">이벤트</a></li>		
					<li><a href="eventNotice.jsp">당첨자 발표</a></li>		
					<li id="on"><a href="list.do">이벤트 리뷰</a></li>		
				</ul>
				</div>	
			</div>
			
		<div class="contents">
			<h2 class="conTitle">이벤트 리뷰</h2>
			
			<!-- 이벤트 리뷰 제목 -->
			<div class="board">
				<div class="listTotal">
					<h3>${bean.title}</h3>
					 <p class="evt_info">
					 <span class="evt_name">
					 	${bean.writer}
					 </span>
					 <span class="evt_date">${bean.fdate}</span>
					 </p>
					</div>
					
					<!-- 게시판 내용 -->
			<div class="boardList">
			 <div class="boardCon">
				<p>${bean.content}</p>
			<div class="article">
				<c:if test="${bean.file!=null}">
						<!-- head는 사진 제목 뽑기. -->
					<c:set var="head" value="${fn:substring(bean.file, 0, fn:length(bean.file)-4)}"></c:set>
						<!-- pattern은 이미지 형식 뽑기. -->
					<c:set var="pattern" value="${fn:substring(bean.file, fn:length(head) +1, fn:length(bean.file))}"></c:set>
				
				<c:choose>
					<c:when test="${pattern == 'jpg' || pattern == 'gif'}">
						<img src="UploadFolder/${head}.${pattern}" width="50%" height="50%"/><br/>
					</c:when>
					<c:otherwise>
						<c:out value="NO IMAGE"></c:out>
					</c:otherwise>
				</c:choose>
				
				</c:if>
				파일첨부 : <a href='FileDownloadAction.do?file_name=${bean.file}'>${bean.file}</a>
			</div>				 	
			 
			 </div>
			</div>
			</div>
			
			
			<!-- 목록 아이콘 -->
			 
			<div class="list_btn" >
				<a href="list.do" class="btn_css">목록</a>
				<input type="button" value="수정" onclick="doAction(0)" />
				<input type="button" value="삭제" onclick="doAction(1)" />
				<script>
	
					function doAction(value) {
						if (value == 0) {
							alert('수정하시겠습니까?');
							location.href = "modifyForm.do?seq=${bean.seq}";
						} else if (value == 1) {
							alert('삭제하시겠습니까?');
							location.href = "delete.do?seq=${bean.seq}";
						}
					}
				</script>
			</div>				
		</div>
	</div>


		<footer id="footer">
			 <div class="footerT">
				<div class="foot_menu">
					<ul>
					 <li class="m1">
						<a href="#" target="blank">
						회사소개</a>	
					 </li>		
					 
					 <li class="m2">
						<a href="#" target="blank">
						이용약관</a>	
					</li>		
					
					 <li class="m3">
						<a href="#" target="blank">
						개인정보 처리방침</a>	
					</li>		
					 
					 <li class="m3">
						<a href="#" target="blank">
						이메일 주소 무단수집 거부</a>	
					</li>		
					
					 <li class="m4">
						<a href="#" target="blank">
						고객만족센터</a>	
					</li>		
				</ul>
			<div class="sitemap">
				<button class="tit">
					<span>Site map</span>
				</button>
			</div>
			
			<div class="familysite">
				<button class="tit">
					<span>Family Site</span>
				</button>
			</div>
			
			<div class="korean">
				<button class="tit">
					<span>Korean</span>
				</button>
			</div>
			
			
		</div>
						
			</div>
			
			
	<div class="footerM">
		<div class="footInfo">
			<div class="address">
				<p>
				 <span>서울특별시 강남구 역삼동 769-8 엠스페이스빌딩, 
				 	도로명 주소 ( 서울특별시 강남구 논현로72길 13 M-SPACE 빌딩 해브앤비 )
				 </span>
				 <span>
				  대표이사 : 크리스토퍼 킨더슬리 우드
				 </span>
				 </p>
				
				<p>
				 <span>상호명 : 해브앤비(주)</span>
				 <span>사업자 등록번호 : 214-87-63681</span>
				 <span>통신판매업 신고번호 : 2008 서울 강남-2284호
				 <a href="#" target="_blank" class="btn btnType3 btnSizeXS busnessinfo">
				 	<span class="arr-right">
				 	사업자 정보 확인
				 	</span>
				 </a>
				 </span>	
				</p>
				 
				 
				 <p>
				 	<span>개인정보관리책임자 : 엄정식 팀장</span>
				 	<span>고객만족센터 : 1544-5453 ( 운영시간 : 09:00~18:00, 점심시간 : 11:50~12:50 )</span>
				 	<span>FAX : 02-3462-9051</span>
				 </p>
				 
				 <p>
				 <span>전자우편주소 : 
				 <a href="mailto:webmaster@drjart.com" class="mail">webmaster@drjart.com</a></span> 
				 </p>
				</div>
				
				<small class="copyright">Copyrightⓒ Have&amp;Be co., Ltd. All rights reserved.</small>
			</div>
			
			<!-- sns -->
			<div class="foot_sns">
				<a href="https://www.instagram.com/drjart_kr/" class="sns1" target="_blank">
				<img src="img/instagram.svg" alt="" /></a>
				
				<a href="https://ko-kr.facebook.com/DrJartPage/" class="sns2" target="_blank">
				<img src="img/facebook.svg" alt="" /></a>
			
				
				<a href="https://twitter.com/drjartkr/" class="sns3" target="_blank">
				<img src="img/twitter.svg" alt="" /></a>
				
			</div>
			
		</div>
		
		<div class="footerB">
			<div class="footMaker">
			 <ul>
			 	<li><img src="#" alt="" />
			 	<span>
			 	iso9001,14001<br/>
			 	환경경영인증 획득</span>
			 	</li>
			 	
			 	<li><img src="#" alt="" />
			 	<span>
			 	기업 부설<br/>
			 	디자인 연구소 인정
			 	</span>
			 	</li>
			 	
			 	<li><a href="#"><img src="#" alt="" />
			 	<span>
			 	에스크로 서비스<br/>
			 	환경경영인증 획득
			 	</span>
			 	</a>
			 	</li>
			 	
			 </ul>
			</div>
		</div>
					</footer>
	
	
	
	
	
	
		
		
		
		
		<!-- 진행 중인 이벤트 사진 -->
		
		
		
		<!-- 이벤트 당첨자 후기 리스트 -->
		
		
	
	
	
</body>
</html>