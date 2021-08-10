@ -1,147 +1,147 @@
<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <meta name="description" content=""/>
    <meta name="author" content=""/>
    <!-- Favicon-->
    <link rel="icon" type="image/x-icon" href="/static/main_page/assets/favicon.ico"/>
    <!-- Font Awesome icons (free version)-->
    <script src="https://use.fontawesome.com/releases/v5.15.3/js/all.js" crossorigin="anonymous"></script>
    <!-- Google fonts-->
    <link href="https://fonts.googleapis.com/css2?family=Gothic+A1:wght@200;300;400;500;600&family=Nanum+Gothic:wght@400;700;800&display=swap"
          rel="stylesheet">
    <!-- naver fonts -->
    <link rel="stylesheet" type="text/css" href="https://cdn.rawgit.com/moonspam/NanumSquare/master/nanumsquare.css">
    <!-- Core theme CSS (includes Bootstrap)-->
    <link href="/static/main_page/css/styles.css" rel="stylesheet"/>
    <link href="/static/my_page/css/my_page.css" rel="stylesheet"/>
    <link href="/static/table/css/style.css" rel="stylesheet"/>
</head>
<title>mypage</title>
<body>
<script type="text/javascript"
        src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.4/jquery.min.js"></script>
<script type="text/javascript">
    $(document).ready(function () {
        var lastEvent = null;
        var slide = "#nav-my_page > li > ul";
        var alink = "#nav-my_page > li > a";
        function accordion() {
            if (this == lastEvent)
                return false;
            lastEvent = this;
            setTimeout(function () {
                lastEvent = null
            }, 200);
            if ($(this).attr('class') != 'active') {
                $(slide).slideUp();
                $(this).next(slide).slideDown();
                $(alink).removeClass('active');
                $(this).addClass('active');
            } else if ($(this).next(slide).is(':hidden')) {
                $(slide).slideUp();
                $(this).next(slide).slideDown();
            } else {
                $(this).next(slide).slideUp();
            }
        }
        $(alink).click(accordion).focus(accordion);
        $('#nav-my_page > li:last > a').addClass('stay');
    });
</script>
<!-- Navigation-->
<nav class="navbar navbar-expand-lg navbar-dark fixed-top"
     id="mainNav_2">
    <div class="container">
        <a class="navbar-brand" href="/main"><img
                src="/static/main_page/assets/img/logo.png" alt="바니 로고 1"/></a>
        <button class="navbar-toggler" type="button"
                data-bs-toggle="collapse" data-bs-target="#navbarResponsive"
                aria-controls="navbarResponsive" aria-expanded="false"
                aria-label="Toggle navigation">
            Menu <i class="fas fa-bars ms-1"></i>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav text-uppercase ms-auto py-4 py-lg-0">
                <li class="nav-item"><a class="nav-link" href="/subs">구독</a></li>
                <li class="nav-item"><a class="nav-link" href="#portfolio">브랜드
                    스토리</a></li>
                <li class="nav-item dropdown"><a
                        class="nav-link dropdown-toggle" href="#"
                        id="navbarDarkDropdownMenuLink" role="button"
                        data-bs-toggle="dropdown" aria-expanded="false"> 상품 보기 </a>
                    <ul class="dropdown-menu"
                        aria-labelledby="navbarDarkDropdownMenuLink">
                        <li></li>
                        <a class="dropdown-item" href="#">패키지</a></li>
                        <li><a class="dropdown-item" href="#">술</a></li>
                        <li><a class="dropdown-item" href="#">안주</a></li>
                    </ul>
                </li>
                <li class="nav-item"><a class="nav-link" href="#team">이벤트</a></li>
                <li class="nav-item dropdown"><a
                        class="nav-link dropdown-toggle" href="#"
                        id="navbarDarkDropdownMenuLink" role="button"
                        data-bs-toggle="dropdown" aria-expanded="false"> 고객센터 </a>
                    <ul class="dropdown-menu"
                        aria-labelledby="navbarDarkDropdownMenuLink">
                        <li></li>
                        <a class="dropdown-item" href="/notice">공지사항</a></li>
                        <li><a class="dropdown-item" href="/faq">자주 묻는 질문</a></li>
                    </ul>
                </li>
            </ul>
            <ul class="navbar-nav text-uppercase ms-auto py-4 py-lg-0">
                <sec:authorize access="isAnonymous()">
                    <li class="nav-item"><a class="nav-link" href="/loginForm">로그인</a></li>
                </sec:authorize>
                <sec:authorize access="isAuthenticated()">
                    <li class="nav-item"><a class="nav-link" href="/board/my_page">마이페이지</a></li>
                </sec:authorize>
                <li class="nav-item"><a class="nav-link" href="#services">장바구니</a></li>
                <sec:authorize access="isAuthenticated()">
                    <li class="nav-item"><a class="nav-link" href="/logout">로그아웃</a></li>
                </sec:authorize>
            </ul>
        </div>
    </div>
</nav>
<!--content-->
<div class="container" style ="width: 70%; padding: 7rem 0;">
    <div class="board_name">마이페이지
        <a class="board_name_small">포인트 및 주문내역, 개인정보 등을 확인하거나 변경하세요.</a>
    </div>
        <div class="line" style="border-bottom: solid 3px; border-bottom-color: #EBC24B;"></div>
    <div class="container my-page-header my-3 ">
        <div class="row">
            <div class="col-3">
                <img class="profile2"
                     style="width: 200px; height: auto;"
                     src="/static/img/BARNY3.png"/>
            </div>
            <div class="col-1" style="border-left: solid 1px; border-left-color: #EBC24B; margin: 2rem 0; width: 1%;">
            </div>
            <div class="col mt-5 pl-5" style="text-align: left;">
                <a style="font-family: BBTreeGB; font-size: 35px;">환영합니다. <sec:authentication
                        property="principal.memberVO.member_name"/>님!</a>
                <p></p>
                <a style="font-family: NanumSquare; font-size: 18px; font-weight: 400;">적립금 >  <sec:authentication
                        property="principal.memberVO.point"/>P</a>
            </div>

        </div>
    </div>
        <div class="line" style="border-bottom: solid 2px; border-bottom-color: #EBC24B;"></div>
    <c:if test="${member == null}"></c:if>
    <div class="main-menu">
        <div class="row mb-3 mt-5">
            <div class="card card-my_page col-4">
                <div class="card-body my_page">
                    구독 정보
                </div>
            </div>
            <div class="card card-my_page col-4">
                <div class="card-body my_page">
                <li><a id="purchase_list" href="purchase_list">구매내역</a></li>
                    구매 내역
                </div>
            </div>
            <div class="card card-my_page col-4">
                <div class="card-body my_page">
                    문의 내역
                </div>
            </div>
        </div>
        <div class="row">
            <div class="card card-my_page col-4">
                <div class="card-body my_page">
                    후기
                </div>
            </div>
            <div class="card card-my_page col-4">
                <div class="card-body my_page">
                    적립금
                </div>
            </div>
            <div class="card card-my_page col-4">
                <div class="card-body my_page">
                    개인정보수정
                </div>
            </div>
        </div>
    </div>
    <div class="line pt-5" style="border-bottom: solid 3px; border-bottom-color: #EBC24B;"></div>
</div>
</div>
<!-- Footer-->
<footer class="footer">
    <div class="container">
        <div class="row align-items-center">
            <div class="col-lg-4 text-lg-start"><b>주식회사 바니</b> <br> 서울특별시 종로구 종로 69 YMCA빌딩 7층
                <br>Copyright &copy; Barny Inc. All rights reserved.
            </div>
            <div class="col-lg-4 my-3 my-lg-0">
                <a class="btn-dark btn-social mx-2" href="#!"><i class="fab fa-twitter"></i></a>
                <a class="btn-dark btn-social mx-2" href="#!"><i class="fab fa-instagram"></i></a>
            </div>
            <div class="col-lg-4 text-lg-end">
                <a class="link-dark text-decoration-none me-3" href="#!">개인정보처리방침</a>
                <a class="link-dark text-decoration-none" href="#!">이용약관</a>
            </div>
        </div>
    </div>
</footer>
<!--top-button-->
<img id="myBtn" src="/static/main_page/assets/top-btn.png" onclick="topFunction()">
<!--kakao-chat-->
<a href="javascript:void kakaoChatStart()" class="kakaoChatPc hidden-md hidden-sm hidden-xs" id="kakao-chat">
    <img src="/static/main_page/assets/kakao-chat.png" width="50px" height="50px">
</a>
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
<script type='text/javascript'>
    Kakao.init('7e53e24ce9a07956bfb5ac4930333caa');
    function kakaoChatStart() {
        Kakao.Channel.chat({
            channelPublicId: '_WDxjSs'
        });
    }
</script>
<!-- Bootstrap core JS-->
<script
        src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
<!-- Core theme JS-->
<script src="/static/main_page/js/scripts.js"></script>
<script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
</body>
</html>