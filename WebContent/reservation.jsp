<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="dto.Movie" %>
<%@ page import="dao.MovieRepository" %>

<jsp:useBean id="movieDAO" class="dao.MovieRepository" scope="session" />
<html>
<head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <title>예약하기</title>
</head>
<body>
    <div class="jumbotron" style="height: 20%; background-color: green;">
        <div class="container">
            <h1 class="display-3"><b>MOVIE SITE</b></h1>
        </div>
        <jsp:include page="menu.jsp" />
    </div>
    <hr style="background-color: red;">
    <div class="container">
        <div class="row">
            <div class="col-md-3">
                <div class="card">
                    <!-- 영화 정보 -->
                    <div class="card-body">
                        <h5 class="card-title">영화</h5>
                        <p class="card-text">영화 설명 또는 기타 정보</p>
                        <!-- 추가적인 영화 정보를 여기에 넣을 수 있습니다. -->
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="card">
                    <!-- 극장 정보 -->
                    <div class="card-body">
                        <h5 class="card-title">극장</h5>
                        <p class="card-text">극장 위치 또는 기타 정보</p>
                        <!-- 추가적인 극장 정보를 여기에 넣을 수 있습니다. -->
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="card">
                    <!-- 날짜 정보 -->
                    <div class="card-body">
                        <h5 class="card-title">날짜</h5>
                        <p class="card-text">상영 일자 또는 기타 정보</p>
                        <!-- 추가적인 날짜 정보를 여기에 넣을 수 있습니다. -->
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="card">
                    <!-- 시간 정보 -->
                    <div class="card-body">
                        <h5 class="card-title">시간</h5>
                        <p class="card-text">상영 시간 또는 기타 정보</p>
                        <!-- 추가적인 시간 정보를 여기에 넣을 수 있습니다. -->
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
