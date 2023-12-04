<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="dto.Movie" %>
<%@ page import="dao.MovieRepository" %>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<%
	String cartId = session.getId();
%>
<title>장바구니</title>
</head>
	<style>
	body {
            background-color: #fff; /* Set the background color to pitch black */
        	font-family: 'Arial', sans-serif;
        	
        }

        .navbar-dark {
            background-color: #000 !important; /* Set the background color of the navbar to pitch black */
        }

        .jumbotron {
            background-color: #000; /* Set the background color of the jumbotron to pitch black */
            color: #fff; /* Set the text color to white */
            padding: 20px;
        }
        
        .jumbotron-text {
            color: #000; /* Set the text color under Movie site에 오신 것을 환영합니다 to black */
            padding: 20px;
        }

        .text-center {
            color: #000; /* Set the text color of the text-center to white */
        }
        /* Add style for the white lines */
        .section-divider {
            border-top: 0.5px solid #808080;
        }
	</style>
<body>
	<jsp:include page="menu.jsp" />
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">장바구니</h1>
		</div>
	</div>
	<div class="container">
		<div class="row">
			<table width="100%">
				<tr>
					<td align="left"><a href="./deleteCart.jsp?cartId=<%=cartId %>" class="btn btn-danger">예매 취소하기</a></td>
				</tr>
			</table>
		</div>
		<div style="padding-top: 50px">
			<table class="table table-hover">
				<tr>
					<th>상품</th>
					<th>가격</th>
					<th>수량</th>
					<th>소계</th>
					<th>비고</th>
				</tr>

			</table>
			<a href="./movies.jsp" class="btn btn-secondary"> &laquo; 돌아가기</a>
		</div>
		<hr>
	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>