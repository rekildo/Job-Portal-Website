<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ page isELIgnored="false" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Panel</title>
<%@ include  file="all_component/all_css.jsp"%>

<style>
	.back-img{
	background: url("img/admin_wall.jpg");
	height: 90vh;
	width:100%;
	background-repeat: no-repeat;
	background-size: cover;
	}

</style>


</head>
<body>

<c:if test="${userobj.role ne 'admin'}">
<c:redirect url="login.jsp"></c:redirect>
</c:if>


<%@include file="all_component/navbar.jsp" %>

<div class="container-fluid back-img">
		<div class="text-center">
			<h1 class="text-white p-4 text-white">
				<i class="fa-solid fa-user-tie mr-1"></i> Welcome Admin
			</h1>
		</div>
	</div>
</body>
</html>