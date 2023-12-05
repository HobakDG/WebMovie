<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="dto.Movie" %>
<%@ page import="dao.MovieRepository" %>

<jsp:useBean id="movieDAO" class="dao.MovieRepository" scope="session" />
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
	<style>
	
		body {
            background-color: #fff; /* Set the background color to pitch black */
        	font-family: 'Arial', sans-serif;
        	
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
        .navbar-dark {
        	background-color: #000 !important; /* Set the background color of the navbar to pitch black */
        }
        /* Add style for the white lines */
        .section-divider {
            border-top: 0.5px solid #808080;
        }
	</style>
<title>영화 목록</title>
</head>
<body>
	<%@include file="menu.jsp" %>
	<div class="jumbotron" style="padding: 0px;">
	    <div class="container" style="padding: 20px;">
	        <h1 class="display-3" style="font-size: 48px; color: white; margin-left: -5px;">
	        	<b>Movie Chart</b></h1>
	    </div>
	</div>

	<%
		MovieRepository dao = MovieRepository.getInstance();
		ArrayList<Movie> listOfMovies = dao.getAllMovies();
		String realPath = application.getRealPath("/resources/image");
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
					<p> <a href="./reservation.jsp?Mname=<%=movie.getMname()%>&Filename=<%=movie.getFilename()%>"					
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