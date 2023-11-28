<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<script type="text/javascript" src="./resources/js/validation.js"></script>
<title>영화 등록</title>
</head>
<body>
	<fmt:setLocale value='<%= request.getParameter("language") %>'/>
	<fmt:bundle basename="bundle.message">
	<jsp:include page="menu.jsp" />
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3"><fmt:message key="title" /></h1>
		</div>
	</div>
	<div class="container">
		<div class="text-right">
			<a href="?language=ko" >Korean</a> | <a href="?language=en" >English</a>
			<a href="logout.jsp" class="btn btn-sm btn-success pull-right">logout</a>
		</div>
		<form name="newMovie" action="./processAddMovie.jsp" 
		class="form-horizontal" method="post" enctype="multipart/form-data">
			<div class="form-group row">
				<label class="col-sm-2"><fmt:message key="movieId" /></label>
				<div class="col-sm-3">
					<input type="text" id="movieId" name="movieId" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2"><fmt:message key="mname" /></label>
				<div class="col-sm-3">
					<input type="text" id="name" name="name" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2"><fmt:message key="advanceReservationRate" /></label>
				<div class="col-sm-3">
					<input type="text" id="arr" name="arr" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2"><fmt:message key="timeAndAge" />
				</label>
				<div class="col-sm-5">
					<textarea name="timeAndAge" cols="50" rows="2"
					 class="form-control"></textarea>
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2"><fmt:message key="releaseDate" />
				</label>
				<div class="col-sm-5">
					<textarea name="releaseDate" cols="50" rows="2"
					 class="form-control"></textarea>
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2"><fmt:message key="description" />
				</label>
				<div class="col-sm-5">
					<textarea name="description" cols="50" rows="2"
					 class="form-control"></textarea>
				</div>
			</div>
			<div class = "form_group row">
				<label class="col-sm-2"><fmt:message key="movieImage" />
				</label>
				<div class="col-sm-5">
					<input type="file" name="movieImage" class="form-control">
				</div>
			</div>	
			<div class = "form_group row">
				<div class="col-sm-offset-2 col-sm-10 ">
					<input type="button" class="btn btn-primary" 
					value="<fmt:message key="button" />" 
					onclick="CheckAddMovie()">
				</div>
			</div>			
		</form>
	</div>
</fmt:bundle>
</body>
</html>