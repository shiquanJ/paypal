<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<title>PAYID</title>
<meta http-equiv="Content-Type" content="application/octet-stream; charset=utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="generator" content="editplus">
<meta name="subject" content="">
<meta name="description" content="Paypal 연동 테스트입니다.">
<meta name="author" content="姜世权">
<meta name="copyright" content="">
<meta name="writer" content="">
<meta name="language" content="">
<meta name="build" content="">
<script type="text/javascript" src="/js/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="/js/jquery-ui.js"></script>
<script type="text/javascript" src="/js/jquery.bxslider.js"></script>
<script type="text/javascript" src="/js/jquery.cookie.js"></script>

<link rel="shortcut icon" type="image/x-icon" href="https://www.paypalobjects.com/webstatic/icon/favicon.ico">

<link rel="stylesheet" href="https://images.innisfree.co.kr/resources/fonts/lite/fonts.css">
<link rel="stylesheet" href="/css/cart/common.css">
<link rel="stylesheet" href="/css/cart/ui.css?val=20210316">
<link rel="stylesheet" href="/css/cart/ui_add.css?ver=20210621">
<link rel="stylesheet" href="/css/cart/slick.css">
<link rel="stylesheet" href="/css/cart/response.css">
<form name="frm" method="post">
<div id="wrap">
<header id="orderHeader">
	<div class="orderHead">
		<h1 class="logo"><a href="#"><img src="https://www.paypalobjects.com/images/shared/paypal-logo-129x32.svg" alt="PayPal"></a>
		</h1>
	</div>
</header>
<div style="height:200px;">
	<c:if test="${empty  json}">
		没有记录或ID输入错误！
	</c:if>
	<c:if test="${!empty  json}">
		${json }
	</c:if>
</div>
<button type="button" class="btnType4" id="cartPayBtn" onclick="window.location.href='/';" style="margin-top:90px;">继续购买</button>
<style>
/* IE9, IE10 */
@media screen and (min-width:0\0) {
    #div_prd_promt_1 { margin-top: 10px !important}
    #div_prd_promt_2 { padding-top: 110px !important}
}
</style>
<footer id="footer">
	<div class="menuWrap">
		<div class="menu">
			<nav role="navigation" aria-label="Customer service">
				<a href="#" onclick="termsOpen('이용약관', 'termsService'); return false;">서비스 이용약관</a>
				<a href="#" onclick="termsOpen('개인정보처리방침', 'terms17'); return false;"><strong>개인정보처리방침</strong></a>
				<a href="#" onclick="termsOpen('영상정보처리기기 운영/관리 방침', 'terms20'); return false;">영상정보처리기기 운영/관리 방침</a>
				<a href="/kr/ko/NtcList.do">공지사항</a>
				<a href="javascript:empCert();">임직원서비스</a>
			</nav>
		
			<div class="ftsns">
				<span class="btnYoutube"><a href="https://www.youtube.com/user/ecoinnisfree11" target="_blank" rel="noopener noreferrer" title="새창">유튜브</a></span>
				<span class="btnInstagram"><a href="https://www.instagram.com/innisfreeofficial/" target="_blank" title="새창" onclick="makeScriptGA_Event('PC_FOOTER', 'SNS', 'INSTAGRAM','Y');" rel="noopener noreferrer">인스타그램</a></span>
				<span class="btnFacebook"><a href="https://www.facebook.com/innisfreeHQ?fref=ts" target="_blank" title="새창" onclick="makeScriptGA_Event('PC_FOOTER', 'SNS', 'FACEBOOK','Y');" rel="noopener noreferrer">페이스북</a></span>
				<span class="btnTwitter"><a href="https://twitter.com/ecoinnisfree" target="_blank" title="새창" onclick="makeScriptGA_Event('PC_FOOTER', 'SNS', 'TWITTER','Y');" rel="noopener noreferrer">트위터</a></span>
				<span class="btnApp"><a href="/kr/ko/GreenteaClubApp.do">모바일 앱</a></span>
			</div>
		</div>
	</div>
		
	<div class="ftinfo">
		<div class="info">
			<p class="inner">
				<span>(주)辽宁省大连市黄泥川软件园SO4</span>
				<span class="non">대표 개발자 강세권</span><br>
				<span>집주소: 大连高新园区雯君庭</span>
				<span>문의 있으면 저한테 전화주세요~</span>
				<span>폰번호 : 186-4084-4669</span>
				<span class="non">FAX (없음)</span><br>
				<span>회사 이메일 주소 <a href="mailTo:jsqjiang@cn.ibm.com">jsqjiang@cn.ibm.com</a></span>
				<span>개인 이메일 주소 <a href="mailTo:jiangshiquan2020@163.com">jiangshiquan2020@163.com</a></span>
				<br>
				<span><a href="#" onclick="layerOpen('emailRefusal');return false;">이메일 주소 무단 수집 거부</a></span>
				<span>개인정보 보호책임자 강세권</span>
				<span>개인 서비스</span><br>
			</p>
			<div class="lgEscrow">
				<strong class="tit">SandBox person계정:</strong>
				<em>sb-uitlr6583701@personal.example.com</em>
				<strong class="tit">비번:</strong>
				<em>9dTNV=Vd</em>
			</div>
			<div class="lgEscrow">
				<strong class="tit">SandBox business계정:</strong>
				<em>sb-wr1ym6594779@business.example.com</em>
				<strong class="tit">비번:</strong>
				<em>UxQh(3+4</em>
			</div>
			<div class="lgEscrow">
				<strong class="tit">㈜IBM회사 다님</strong>
				<em>저는 현재 B2C B2B 업무를 담당하고 있습니다.</em>
				<p>
					<button type="button" onclick="window.open('https://c.y.qq.com/base/fcgi-bin/u?__=OysRjc0', 'LGU', 'width=336, height=259');">좋아하는 노래 링크</button>
				</p>
			</div>
			<p class="copyRight">Copyright © 2021 IBM. All Rights Reserved.</p>
		</div>
		<div class="info_2">
			<dl>
				<dt>개발자: 강세권</dt>
				<dd>
					<strong>186-4084-4669</strong>(위쳇 동일)
				</dd>
				<dd>
					운영시간 AM 08:00 ~ PM 17:00 (주말 및 공휴일 휴무)<br>
					점심시간 PM 12:00 ~ PM 13:00
				</dd>
				<dd>
					<a href="#" class="btn">1:1 상담작성 </a>
				</dd>
			</dl>
		</div>
	</div>
</footer>
</div>
</form>
