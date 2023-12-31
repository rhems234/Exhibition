<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">

<title>내 활동</title>
</head>
<body>

	<%@include file="../login_nav.jsp"%>
	<%@include file="../main_nav.jsp"%>
	
	<h1 style="text-align: center;"><%= request.getParameter("title") %> 리뷰 </h1>
	
	<div style="display: flex;">
	
	 <c:forEach var="buyDTO" items="${buyDTO}">
	 <div class="card" style="width: 18rem;  margin-left: 300px;">
	  <img class="card-img-top" src="${buyDTO.thumbnail}">
	 </div>
	 </c:forEach>
	 
	  <div style="padding: 50px; flex: 2;">
	    <table class="table table-hover">
	      <tr>
	        <th>작성자</th>
	        <th>리뷰내용</th>
	        <th>평점</th>
	      </tr>
	      <c:forEach var="BoardVO" items="${BoardVO}">
	        <tr>
	          <td>${BoardVO.nickname}</td>
	          <td>${BoardVO.text}</td>
	          <td>${BoardVO.grade}</td>
	        </tr>
	      </c:forEach>
	    </table>
	  </div>
	</div>


</body>
</html>