<%@page import = "java.util.Base64" %>
<%@page import = "dto.Movie" %>
<%@page import = "java.util.List" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
     <h1>Welcome</h1>
	
	<% List<Movie> movies = (List)request.getAttribute("movies"); %>
	
	<table border="2px" class="table">
	<tr>
	<th>id</th>
	<th>name</th>
	<th>price</th>
	<th>rating</th>
	<th>genre</th>
	<th>language</th>
	<th>image</th>
	<th>delete</th>
	</tr>
	
	<% for(Movie m : movies){ %>
	
	<tr>
	<td><%= m.getMovieid() %></td>
	<td><%= m.getMoviename() %></td>
	<td><%= m.getMovieprice() %></td>
	<td><%= m.getMovierating() %></td>
	<td><%= m.getMoviegenre() %></td>
	<td><%= m.getMovielanguage() %></td>
	
	<% String base64image= new String(Base64.getEncoder().encode(m.getMovieimage())); %>
	<td><img  src="data:image/jpeg;base64, <%=base64image %>" height="100px" width="100px" > </td>
	<td> <a href ="deletemovie?id-<%=m.getMovieid()%>">delete</a></td>
	<td> <a href ="editovie?id-<%=m.getMovieid()%>">edit</a></td>
	
	
	</tr>
	
	<% } %>
	
	
	</table>

	<a href="addmovie.jsp">Add_Movie</a>
</body>
</html>