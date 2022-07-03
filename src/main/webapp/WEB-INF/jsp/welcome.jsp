<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css"
	href="webjars/bootstrap/3.3.7/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css"
	href="/css/main.css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>  

</head>

<title>Web-Crawler</title>
<body>
    <h>${name}</h>
	<div class="container" id="container">
	<div class="form-container sign-in-container">
		<form action="/generateCrawler" method="post"
				onsubmit="return validateForm();">
			<h1>Web Crawler</h1>
			<div class="social-container">
				<a href="#" class="social"><i></i></a>
				<a href="#" class="social"><i></i></a>
				<a href="#" class="social"><i></i></a>
			</div>
			<span>Enter url/link which you want to crawl</span>
			<input type="text" name="crawlUrl" id="crawlurl" placeholder="Crawl Url" />
			<input type="text" name="maxPages" id="maxPages" placeholder="Max No of Pages" />
			<a></a>
			<button type="submit">Generate Crawler Results</button>
		</form>
	</div>
	<div class="overlay-container">
		<div class="overlay">
			<div class="overlay-panel overlay-right">
				<h1>Results</h1>
				<input type="text" id="myInput" onkeyup="search()" placeholder="Search for result..">
				<div id="scrollit">
				<table id="myTable">
				  <tr class="header">
				    <th style="width:60%;">Results</th>
				  </tr>
				  
				 <c:forEach var="document" items="${documents}">     
				    <tr>
				    	<th style="width:60%;">${document}</th>  
				    </tr>
				  </c:forEach>
							  
				</table>
				</div>
			</div>
		</div>
	</div>
</div>

<footer>
	<p>
		Web Crawler
	</p>
</footer>
<script>
function search() {
  // Declare variables
  var input, filter, table, tr, td, i, txtValue;
  input = document.getElementById("myInput");
  filter = input.value.toUpperCase();
  table = document.getElementById("myTable");
  tr = table.getElementsByTagName("tr");

  // Loop through all table rows, and hide those who don't match the search query
  for (i = 0; i < tr.length; i++) {
    td = tr[i].getElementsByTagName("td")[0];
    if (td) {
      txtValue = td.textContent || td.innerText;
      if (txtValue.toUpperCase().indexOf(filter) > -1) {
        tr[i].style.display = "";
      } else {
        tr[i].style.display = "none";
      }
    }
  }
}

function validateForm() {
	var crawlUrl = document.getElementById("crawlurl").value;
	var maxPages = document.getElementById("maxPages").value;
	var regex = /(http|https):\/\/(\w+:{0,1}\w*)?(\S+)(:[0-9]+)?(\/|\/([\w#!:.?+=&%!\-\/]))?/;
	document.getElementById("crawlurl").style.border="thin solid grey";
	document.getElementById("maxPages").style.border="thin solid grey";
	if (crawlUrl == "" || !regex .test(crawlUrl) ) {
		alert("Please input the Valid Crawl Url");
		document.getElementById("crawlurl").style.border="thin solid red";
		return false;
	} else if (maxPages == "") {
		alert("Please input the Max No of Pages");
		document.getElementById("maxPages").style.border="thin solid red";
		return false;
	}
	return true;
}
</script>
</body>
</html>