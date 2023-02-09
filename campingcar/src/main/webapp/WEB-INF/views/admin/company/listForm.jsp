<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
<%@ page import="java.util.*" %>
<%@ page import="java.text.SimpleDateFormat" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
	<meta name="viewport" content="width=device-width, initial-scale=1">	
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<head>
<meta charset="UTF-8">
<title>자바 캠핑카 - 관리자 페이지</title>
<%@ include file="../../include/plugin.jsp" %>
<link href="${contextPath}/resources/css/admin/admin_all.css" rel="stylesheet" />
<c:set var="title" value="대여 회사 현황" />
</head>
<style>

</style>
<body>
	    
				 
				  <div id="container">
				  <!-- #sidebar start -->
	<%@ include file="../include/sidebar.jsp" %>
	<!-- // #sidebar end -->

	<!-- #topmenu start -->
	<%@ include file="../include/topmenu.jsp" %>
	<!-- // #topmenu end -->
	<div id="wrap">
	
		
	<%@include file="listForm2.jsp" %>
			
		
			<section class="content container-fluid">
			<div class="table-responsive">
			 <div class="container text-center table-hover">
			<table class="table table-bordered">
			<colgroup>
				</colgroup>
			  <h4><b>파트너 제휴 신청 목록입니다</b></h4><br>
			  
			 
			  <tr class="table-secondary">
				  	<th>회사번호</th>
				  	<th>회사명</th>
				  	<th>주소</th>
				  	<th>전화번호</th>
				  	<th>담당자</th>
				  	<th>담당자 이메일</th>
				  	<th>신청 상태</th>
			  </tr>
			 
			<c:forEach var="company" items="${list2}">
			 	<tr>
				 	<th>${company.comp_id}</th>
				 	<td><a href="read?comp_id=${company.comp_id}" style="color:blue">${company.comp_name}</a></td>
				 	<td>${company.comp_addr}</td>
				 	<td>${company.comp_phone}</td>
				 	<td>${company.comp_pic}</td>
				 	<td>${company.comp_pic_email}</td>
				 	<th>대기</th> 
			 	</tr>
			</c:forEach>
			 </table>	
			 </div>
			 </div>
		  </div>
		  </div>
		  </section>
		  
		  
		  
		  <br>
		  <br>
		  <br>
		  <br>
		  <br>
		  <br>
		  <br>
			  
    	
				  

</body>
</html>