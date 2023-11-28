<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="dto.Movie"%>
<%@ page import="dao.MovieRepository" %>
<%@ page errorPage="exceptionNomovieId.jsp"%>
<jsp:useBean id="movieDAO" class = "dao.MovieRepository" scope="session" />
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>상품 상세 정보</title>
<script type="text/javascript">
	function addToCart() {
		if(confirm("상품을 장바구니에 추가하시겠습니까?")){
			document.addForm.submit();
		} else{
			document.addForm.reset();
		}
	}
</script>
</head>
<body>
	<div class="jumbotron" style = "height: 20%; background-color: green;">
		<div class="container">
			<h1 class="display-3"><b>MOVIE INFORMATION</b></h1>
		</div>
			<jsp:include page="menu.jsp" />
	</div>
	<%
		String id = request.getParameter("id");
		MovieRepository dao = MovieRepository.getInstance();
		Movie movie = dao.getMovieById(id);
	%>
	<div class="container">
		<div class="row">
			<div class="col-md-5">
			<img src="resources/images/<%=movie.getFilename()%>" style="width: 80%">
			</div>
			<div class="col-md-6">
				<h3><b><%=movie.getMname()%></b></h3>
				<p><%=movie.getDescription()%>
				<p><b>상영시간 / 관람등급 : </b><%=movie.getTimeAndAge()%>
				<p><b>개봉일 : </b><%=movie.getReleaseDate()%>
					<p> <a href="./reservation.jsp" class="btn btn-info">예매하기&raquo;</a>
					</div>
				</div>
				<hr>
			</div>
			<jsp:include page="footer.jsp" />
</body>
</html>