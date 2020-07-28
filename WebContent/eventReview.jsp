<%@ page import="com.board.bean.BbsBean" %> 
<%@ page import="com.board.dao.BoardDAO" %>
<%@page import="java.util.*"%>
<%@ page import="java.sql.*" %>
<%@page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.ArrayList" %> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">

<!-- Style -->
<link rel="stylesheet" href="css/content2.css">

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
			
			<!-- 이벤트 리뷰 게시판 상단 네비 -->
			<div class="board">
				<div class="listTotal">
					<p class="totalCnt">전체(${listCount})</p>
					<div class="sortArea">
						<div class="selectBox">
						 <ul>
						 	<li><button class="title" type="button" title="검색옵션 선택">전체</button><li>
							<ul class="selList">
								<li><a href="#">전체</a></li>
								<li><a href="#">이벤트</a></li>
							</ul>
						</ul>
						</div>
						<div class="selectDay">
						<ul>
							<li><button class="title" type="button" title="검색옵션 선택">최근 등록순</button></li>
							<ul class="selList">
								<li><a href="#">최근 등록순</a></li>
								<li><a href="#">조회순</a></li>
							</ul>
						</ul>	
						</div>
					</div>
					</div>
					
					<!-- 게시판 목록 -->
						<div class="boardList">
							<table>
							<colgroup>
								<col style="width:120px">
								<col style="width:400px;">
								<col style="width:150px">
								<col style="width:200px">
								<col style="width:120px">
							</colgroup>
					
							<tr class="thead">
								 <th>글번호</th>
								 <th>제목</th>
								 <th>ID</th>
								 <th>작성일</th>
								 <th>조회수</th>
							 </tr>
							<c:forEach var="article" items="${articleList}">
								<tr>
									<td>${article.seq}</td>
									<!-- jstl의 표현식은 스크립트릿과 속성이 같아서 어디에쓰나 우선됨 -->
									<td><a href="detail.do?seq=${article.seq}">[댓글이벤트]${article.title}</a>
									<td>${article.writer}</td>
									<td>${article.fdate}</td>
									<td>${article.count}</td>

								</tr>
							</c:forEach>

							
							</table>
						
							
						</div>
						
						
						
						<!-- 페이징 처리 -->
					
				<div id="pageList">
					<c:if test="${startPage!=1}">
						<a href='list.do?page=${startPage-1}'>[이전]</a>
					</c:if>
					<c:if test="${startPage==1}">
						<a href='#'>[이전]</a>
					</c:if>
					<c:forEach var="pageNum" begin="${startPage}" end="${endPage}">
						<a href='list.do?page=${pageNum}'>${pageNum}&nbsp;</a>
					</c:forEach>
					<c:if test="${endPage!=totalPage}">
						<a href='list.do?page=${endPage+1}'>[다음]</a>
					</c:if>
					<c:if test="${endPage==totalPage}">
						<a href='#'>[다음]</a>
					</c:if>
				</div>
						
				<p class="eventComment">
					이벤트 종료일로부터 6개월이 지난 이벤트에 대한 후기는 작성 불가합니다.<br/>
 					댓글 이벤트 참여현황은 조회 불가합니다. 결과는 "Event > 당첨자 발표"에서 확인 부탁드립니다.
				</p>
				
				<div class="review_btn">
					<a href="eventReviewWrite.jsp" id="write" class="reviewBtn">
					<span>후기 등록하기</span></a>
				</div>
				
			
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