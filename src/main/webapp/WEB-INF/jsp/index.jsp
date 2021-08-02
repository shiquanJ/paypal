<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
<title>PayPal HomePage</title>
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
<script type="text/javascript" src="/js/jquery-1.9.1.min.js"></script>
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

<script type="text/javascript" src="/js/cart/main.js?v=1"></script>

<form name="frm" method="post">
<div id="wrap">
<!--header 模块  -->
<header id="orderHeader">
	<div class="orderHead">
		<h1 class="logo"><a ><img src="https://www.paypalobjects.com/images/shared/paypal-logo-129x32.svg" alt="PayPal"></a>
			<div class="headerSearch" style="width:500px;">
				<fieldset class="keywordInput" style="float: left; width:300px;">
					<legend>검색어 입력</legend>
						<input type="hidden" name="schText" id="schText" value="">
						<input type="text" class="inputTxt" id="ordercd" value="" name="ordercd" placeholder="PAYID  OR  Ordercd" >
						<button type="button" class="btnSearch" onclick="head_top_search(); "><span class="hide">검색</span></button>
				</fieldset>
				<ul class="list_myutil">
					<!-- 장바구니 이동-->
					<li class="link_cart" style="float: right; margin-top: -10px;">
						<a href="javascript:void(0);" class="btnCart" onclick="fnCartPage();">购物车(<em id="cartCnt">0</em>)</a>
					</li>
					<!-- //장바구니 -->
				</ul>
			</div>
		</h1>
	</div>
</header>
<!--产品 模块  -->
<div id="container">
	<section class="mainNewPdt2">
		<h2 class="subTitle">NEW产品</h2>
			<div class="contWrap">
				<div class="slide pdtListType">
					<ul class="swiper-wrapper slick-initialized slick-slider">
						<li class="swiper-slide">
						<input type="hidden" name="prdlist" >
							<span class="pdtOver">
								<a  onclick="javascript:setCart('PD0000001',0)"  class="pdtImg" tabindex="-1">
									<span class="stikerWrap">
									</span>
									<span class="labelWrap">
									</span>
									<img src="https://images.innisfree.co.kr/upload/product/29802_p_S_320.jpg?T202106271347" alt="Product1 SPF 50+ PA++++">
									<img src="https://images.innisfree.co.kr/upload/product/29802_p1_S_320.jpg?T202106271347" class="over">
								</a>
								<span class="pdtUtil">
									<button type="button" class="iconCart" onclick="javascript:setCart('PD0000001',0);" tabindex="-1">장바구니</button>
								</span>
							</span>
							<a  onclick="javascript:setCart('PD0000001',0)" class="pdtCont" tabindex="-1">
								<span class="txt" style="color:"></span>
								<span class="name">商品名：Product1 SPF 50+ PA++++</span>
								<span class="name">商品编码：PD0000001</span>
									<span class="price">
										<span class="num">50</span>￥
									</span>
								<span class="pdtStatus">
									<span class="iconNew">NEW</span>
								</span>
							</a>
						</li>
						<li class="swiper-slide">
						<input type="hidden" name="prdlist" >
							<span class="pdtOver">
								<a  onclick="javascript:setCart('PD0000002',1)"class="pdtImg" tabindex="-1">
									<span class="stikerWrap">
										<strong class="stikerType1">30%</strong>
									</span>
									<span class="labelWrap">
										<span><img src="https://images.innisfree.co.kr/upload/product/E01_113_0.png?T202106252307" ></span>
										<span><img src="https://images.innisfree.co.kr/upload/product/E01_107_0.png?T202106252307" ></span>
										<span><img src="https://images.innisfree.co.kr/upload/product/E01_109_0.png?T202106252307" ></span>
									</span>
									<img src="https://images.innisfree.co.kr/upload/product/29302_l_S_250.jpg?T202106271517" alt="Product2 SPF 50+" >
									<img src="https://images.innisfree.co.kr/upload/product/29302_l1_S_250.jpg?T202106271517" class="over" >
								</a>
								<span class="pdtUtil">
									<button type="button" class="iconCart" onclick="javascript:setCart('PD0000002',1);" tabindex="-1">장바구니</button>
								</span>
							</span>
							<a  onclick="javascript:setCart('PD0000002',1)" class="pdtCont" tabindex="-1">
								<span class="txt" style="color:"></span>
								<span class="name">商品名：Product2 SPF 50+</span>
								<span class="name">商品编码：PD0000002</span>
									<span class="price">
										<del class="regular">69.9</del>
										<span class="num">50</span>$
									</span>
								<span class="pdtStatus">
									<span class="iconNew">NEW</span>
									<span class="iconGift">GIFT</span>
									<span class="iconSale">SALE</span>
								</span>
							</a>
						</li>
						<li class="swiper-slide">
						<input type="hidden" name="prdlist" >
							<span class="pdtOver">
								<a  onclick="javascript:setCart('PD0000003',2)" class="pdtImg" tabindex="-1">
									<span class="stikerWrap">
									</span>
									<span class="labelWrap">
													<span><img src="https://images.innisfree.co.kr/upload/product/E01_118_0.png?T202106252307" ></span>
									</span>
									<img src="https://images.innisfree.co.kr/upload/product/24588_l_S_250.jpg?T202106271527" alt="Product3 Sample 50+" >
									<img src="https://images.innisfree.co.kr/upload/product/24588_l_S_250.jpg?T202106271527" class="over" >
								</a>
								<span class="pdtUtil">
									<button type="button" class="iconCart" onclick="javascript:setCart('PD0000003',2);" tabindex="-1">장바구니</button>
								</span>
							</span>
							<a  onclick="javascript:setCart('PD0000003',2)" class="pdtCont" tabindex="-1">
								<span class="txt" style="color:#0083d8"></span>
								<span class="name">商品名：Product3 Sample 50+</span>
								<span class="name">商品编码：PD0000003</span>
									<span class="price">
										<span class="num">30</span>$
									</span>
								<span class="pdtStatus">
									<span class="iconNew">NEW</span>
								</span>
							</a>
						</li>
						<li class="swiper-slide">
						<input type="hidden" name="prdlist" >
							<span class="pdtOver">
								<a  onclick="javascript:setCart('PD0000004',3)" class="pdtImg" tabindex="-1">
									<span class="stikerWrap">
									</span>
									<span class="labelWrap">
									</span>
									<img src="https://images.innisfree.co.kr/upload/product/5424_l_S_250.jpg?T202106271527" alt="Product4 Sample spa++" >
									<img src="https://images.innisfree.co.kr/upload/product/5424_l1_S_250.jpg?T202106271527" class="over" >
								</a>
								<span class="pdtUtil">
									<button type="button" class="iconCart" onclick="javascript:setCart('PD0000004',3);" tabindex="-1">장바구니</button>
								</span>
							</span>
							<a  onclick="javascript:setCart('PD0000004',3)" class="pdtCont" tabindex="-1">
								<span class="txt" style="color:"></span>
								<span class="name">商品名：Product4 Sample spa++</span>
								<span class="name">商品编码：PD0000004</span>
									<span class="price">
										<span class="num">40</span>$
									</span>
								<span class="pdtStatus">
									<span class="iconNew">NEW</span>
								</span>
							</a>
						</li>
						<li class="swiper-slide">
						<input type="hidden" name="prdlist" >
							<span class="pdtOver">
								<a  onclick="javascript:setCart('PD0000005',4)" class="pdtImg" tabindex="-1">
									<span class="stikerWrap">
									</span>
									<span class="labelWrap">
									</span>
									<img src="https://images.innisfree.co.kr/upload/product/20446_l_S_250.jpg" alt="Product5 Sample spa++" >
									<img src="https://images.innisfree.co.kr/upload/product/20446_l1_S_250.jpg" class="over" >
								</a>
								<span class="pdtUtil">
									<button type="button" class="iconCart" onclick="javascript:setCart('PD0000005',3);" tabindex="-1">장바구니</button>
								</span>
							</span>
							<a  onclick="javascript:setCart('PD0000005',4)" class="pdtCont" tabindex="-1">
								<span class="txt" style="color:"></span>
								<span class="name">商品名：Product5</span>
								<span class="name">商品编码：PD0000005</span>
									<span class="price">
										<span class="num">35</span>$
									</span>
								<span class="pdtStatus">
									<span class="iconNew">NEW</span>
								</span>
							</a>
						</li>
						<li class="swiper-slide" >
						<input type="hidden" name="prdlist" >
							<span class="pdtOver">
								<a  onclick="javascript:setCart('PD0000006',5)" class="pdtImg" tabindex="-1">
									<span class="stikerWrap">
									</span>
									<span class="labelWrap">
									</span>
									<img src="https://images.innisfree.co.kr/upload/product/28677_l_S_250.jpg" alt="Product6 Sample spa++" >
									<img src="https://images.innisfree.co.kr/upload/product/28677_l_S_250.jpg" class="over" >
								</a>
								<span class="pdtUtil">
									<button type="button" class="iconCart" onclick="javascript:setCart('PD0000006',3);" tabindex="-1">장바구니</button>
								</span>
							</span>
							<a  onclick="javascript:setCart('PD0000006',5)" class="pdtCont" tabindex="-1">
								<span class="txt" style="color:"></span>
								<span class="name">商品名：Product6</span>
								<span class="name">商品编码：PD0000006</span>
									<span class="price">
										<span class="num">20</span>$
									</span>
								<span class="pdtStatus">
									<span class="iconNew">NEW</span>
								</span>
							</a>
						</li>
						<li class="swiper-slide" >
						<input type="hidden" name="prdlist" >
							<span class="pdtOver">
								<a  onclick="javascript:setCart('PD0000007',6)" class="pdtImg" tabindex="-1">
									<span class="stikerWrap">
									</span>
									<span class="labelWrap">
									</span>
									<img src="https://images.innisfree.co.kr/upload/product/18239_l_S_250.jpg" alt="Product7 Sample spa++" >
									<img src="https://images.innisfree.co.kr/upload/product/18239_l_S_250.jpg" class="over" >
								</a>
								<span class="pdtUtil">
									<button type="button" class="iconCart" onclick="javascript:setCart('PD0000007',3);" tabindex="-1">장바구니</button>
								</span>
							</span>
							<a  onclick="javascript:setCart('PD0000007',6)" class="pdtCont" tabindex="-1">
								<span class="txt" style="color:"></span>
								<span class="name">商品名：Product7</span>
								<span class="name">商品编码：PD0000007</span>
									<span class="price">
										<span class="num">21</span>$
									</span>
								<span class="pdtStatus">
									<span class="iconNew">NEW</span>
								</span>
							</a>
						</li>
						<li class="swiper-slide">
						<input type="hidden" name="prdlist" >
							<span class="pdtOver">
								<a  onclick="javascript:setCart('PD0000008',7)" class="pdtImg" tabindex="-1">
									<span class="stikerWrap">
									</span>
									<span class="labelWrap">
									</span>
									<img src="https://images.innisfree.co.kr/upload/product/28738_l_S_250.jpg" alt="Product8 Sample spa++" >
									<img src="https://images.innisfree.co.kr/upload/product/28738_l_S_250.jpg" class="over" >
								</a>
								<span class="pdtUtil">
									<button type="button" class="iconCart" onclick="javascript:setCart('PD0000008',3);" tabindex="-1">장바구니</button>
								</span>
							</span>
							<a  onclick="javascript:setCart('PD0000008',7)" class="pdtCont" tabindex="-1">
								<span class="txt" style="color:"></span>
								<span class="name">商品名：Product8</span>
								<span class="name">商品编码：PD0000008</span>
									<span class="price">
										<span class="num">15</span>$
									</span>
								<span class="pdtStatus">
									<span class="iconNew">NEW</span>
								</span>
							</a>
						</li>
					</ul>
				</div>
			</div>
	</section>
	<footer id="footer">
	<div class="menuWrap">
		<div class="menu">
			<nav role="navigation" aria-label="Customer service">
				<a  onclick="termsOpen('이용약관', 'termsService'); return false;">서비스 이용약관</a>
				<a  onclick="termsOpen('개인정보처리방침', 'terms17'); return false;"><strong>개인정보처리방침</strong></a>
				<a  onclick="termsOpen('영상정보처리기기 운영/관리 방침', 'terms20'); return false;">영상정보처리기기 운영/관리 방침</a>
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
				<span><a  onclick="layerOpen('emailRefusal');return false;">이메일 주소 무단 수집 거부</a></span>
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
					<a  class="btn">1:1 상담작성 </a>
				</dd>
			</dl>
		</div>
	</div>
</footer>
</div>
<!--添加购物车  -->
<div id="pdtInCart" class="layerPop" style="display: none;">
	<section class="layerWrap" style="width:480px;">
		<h3 class="layerTitle">添加购物车</h3>
		<div class="layerContents">
			<div class="alertCont">
				<p class="txt4">
					已添到购物车
				</p>
			</div>
			<div class="btnWrap">
				<span><button type="button" class="btnType3" onclick="layerClose();">继续购买</button></span>
				<span><a href="javascript:fnCartPage();" class="btnType6">看购物车</a></span>
			</div>
		</div>
		<button type="button" class="btnLayerClose" onclick="layerClose();">레이어 팝업 닫기</button>
	</section>
</div>
<style>
/* IE9, IE10 */
@media screen and (min-width:0\0) {
    #div_prd_promt_1 { margin-top: 10px !important}
    #div_prd_promt_2 { padding-top: 110px !important}
}
</style>
</div>
</form>
