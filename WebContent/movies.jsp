<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="dto.Movie" %>
<%@ page import="dao.MovieRepository" %>

<jsp:useBean id="movieDAO" class="dao.MovieRepository" scope="session" />
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>영화 목록</title>
</head>
<body>

	<div class="jumbotron" style = "height: 20%; background-color: green;">
		<div class="container">
			<h1 class="display-3"><b>MOVIE CHART</b></h1>
		</div>
			<jsp:include page="menu.jsp" />
	</div>
	<%
		MovieRepository dao = MovieRepository.getInstance();
		ArrayList<Movie> listOfMovies = dao.getAllMovies();
	%>
	<div class="container">
		<div class="row" align="center">
			<%
				for(int i =0; i<listOfMovies.size(); i++){
					Movie movie = listOfMovies.get(i);
				%>
				<div class="col-md-4">
				<div class="card">
					<img src="resources/images/<%=movie.getFilename()%>">
					<p></p>
					<div class="row" align="left">
						<div class="col-md-8">
							<h3><%=movie.getMname()%></h3>
							<h7><%=movie.getTimeAndAge()%></h7>
							<p><%=movie.getReleaseDate()%>
						</div>
					<div class="row" align="right">
					<div class="col-md-2">
					<p> <a href="./movie.jsp?id=<%=movie.getMovieId()%>"					
					class = "btn btn-secondary" role="button">상세정보></a>
					<p> <a href="./reservation.jsp?id=<%=movie.getMovieId()%>"					
					class = "btn btn-secondary" role="button">예매하기></a>
					</div>
					</div>	
					</div>
				</div>
			</div>
					<%
					}
					%>
		</div>
				<hr>
	</div>
			<jsp:include page="footer.jsp" />
</body>
</html>