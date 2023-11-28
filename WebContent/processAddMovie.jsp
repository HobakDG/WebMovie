<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="com.oreilly.servlet.*"%>
<%@ page import="com.oreilly.servlet.multipart.*"%>
<%@ page import="java.util.*"%>
<%@ page import="dto.Movie" %>
<%@ page import="dao.MovieRepository"%>

<%
	request.setCharacterEncoding("UTF-8");

	String filename= "";
	String realFolder = "C:\\Users\\cil12\\eclipse-workspace\\WebMovie\\WebContent\\resources\\images";
	int maxSize = 5*1024*1024;
	String encType = "utf-8";
	
	MultipartRequest multi = new MultipartRequest(request, realFolder, 
			maxSize, encType, new DefaultFileRenamePolicy());
	
	String movieId = multi.getParameter("movieId");
	String name = multi.getParameter("name");
	String description = multi.getParameter("description");
	String arr = multi.getParameter("arr");
	String releaseDate = multi.getParameter("releaseDate");
	String timeAndAge = multi.getParameter("timeAndAge");

	Enumeration files = multi.getFileNames();
	String fname = (String) files.nextElement();
	String fileName = multi.getFilesystemName(fname);
	
	MovieRepository dao = MovieRepository.getInstance();
	
	Movie newMovie = new Movie();
	newMovie.setMovieId(movieId);
	newMovie.setMname(name);
	newMovie.setDescription(description);
	newMovie.setArr(arr);
	newMovie.setReleaseDate(releaseDate);
	newMovie.setTimeAndAge(timeAndAge);
	newMovie.setFilename(filename);
	
	dao.addMovie(newMovie);
	
	response.sendRedirect("movies.jsp");
	%>