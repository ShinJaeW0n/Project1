<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">

<!-- Style -->
<link rel="stylesheet" href="css/content6.css">

<title>이벤트 리뷰 작성 게시판</title>

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
					<li><a href="eventMain.jsp">이벤트</a></li>		
					<li><a href="eventNotice.jsp">당첨자 발표</a></li>		
					<li id="on"><a href="list.do">이벤트 리뷰</a></li>		
				</ul>
				</div>	
			</div>

		<div class="contents">
			<h2 class="conTitle">후기 작성하기</h2>
			<form action="write.do" method="post" enctype="multipart/form-data">
				<div class="board">
				<div class="listTotal">
			<!-- 아이디 가져오기 -->	
			
			<div>
				<label for="title">제목 : </label>
				<input type="text" name="title" id="title" style="width:300px;" required="required"/>
			</div>	
			
			<div>	
				<label for="writer">아이디 : </label>
				<input type="text" name="writer" id="writer" required="required"/>
			</div>
			
			<div class="textArea">
				내용 : <textarea name="content" cols="100" rows="10" placeholder="후기를 작성해주세요" required="required"></textarea>
			</div>
			
			<div>
				<label for="file">파일 첨부하기 : </label>
				<input type="file" name="file" id="file" required="required"/>
			</div>	
			
			</div>
			
				</div>
			<div>
		</div>	
			<div class="list_btn">
				<input type="button" class="back_btn" value="목록" onclick="goPage()" />			
				<input type="submit" value="등록" class="wrt_btn" />
			</div>
		</form>
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
	
	
	
	<script type="text/javascript"> 
	function goPage() { location.href="eventMain.jsp"; } 
	</script>

	
	
		
		
		
		
		<!-- 진행 중인 이벤트 사진 -->
		
		
		
		<!-- 이벤트 당첨자 후기 리스트 -->
		
		
	
	
	
</body>
</html>