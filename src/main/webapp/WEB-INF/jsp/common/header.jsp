<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<header id="js-top_header" class="top_header transparent">
  <div class="top_header__container">
    <a href="/" class="top_header__logo">
      <img src="/images/company/assets/logo.png" alt="logo">
    </a>
    <a href="/" class="top_header__logo--white">
      <img src="/images/company/assets/logo_white.png" alt="logo">
    </a>
    <div class="top_header__menu" id="js-menu_button">
      <img src="/images/company/assets/berger.png" alt="menu" width="20" height="16">
    </div>
    <nav class="top_header__nav">
      <div class="top_header__nav__item">
        <a href="company/company.jsp" class="top_header__nav__title">
          <span>关于我们</span>
        </a>
        <ul class="top_header__nav__dropdown">
          <li>
            <a href="/page/11_intro/10_responsive.php">
              <span>公司简介</span>
            </a>
          </li>
          <li>
            <a href="/page/11_intro/30_hosting.php">
              <span>企业理念</span>
            </a>
          </li>
          <li>
            <a href="/page/11_intro/30_hosting.php">
              <span>服务体系</span>
            </a>
          </li>          
          <li>
            <a href="/page/11_intro/40_price.php">
              <span>公司地址</span>
            </a>
          </li>
        </ul>
      </div>
      <div class="top_header__nav__item">
        <a href="/page/12_maintenance/10_index.php" class="top_header__nav__title">
          <span>产品服务</span>
        </a>
        <ul class="top_header__nav__dropdown">
          <li>
            <a href="/page/12_maintenance/10_index.php">
              <span>社会化媒体传播</span>
            </a>
          </li>
          <li>
            <a href="/page/12_maintenance/20_webservice.php">
              <span>移动互联网搭建</span>
            </a>
          </li>
          <li>
            <a href="/page/12_maintenance/20_webservice.php">
              <span>定制项目开发</span>
            </a>
          </li>          
        </ul>
      </div>
      <a href="news/news.jsp" class="top_header__nav__title">
        <span>新闻</span>
      </a>
      <div class="top_header__nav__item">
        <a href="/page/14_service/10_notice.php" class="top_header__nav__title">
          <span>团队文化</span>
        </a>
        <ul class="top_header__nav__dropdown">
          <li>
            <a href="/page/14_service/24_question.php">
              <span>经典案例</span>
            </a>
          </li>
          <li>
            <a href="/page/14_service/20_maintenance.php">
              <span>活动图片</span>
            </a>
          </li>
        </ul>
      </div>
      <a href="/page/20_question" class="top_header__nav__link">
        <span>联系我们</span>
      </a>
      <a href="https://pf.kakao.com/_xeHWSK" target="_blank" class="top_header__nav__link top_header__nav__link--kakao">
        <img src="/images/company/assets/kakao_icon.svg" alt="kakao">
        <span>公告</span>
      </a>
    </nav>
	</div>
</header>