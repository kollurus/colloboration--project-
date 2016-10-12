<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html>
<head>
<style>
body{
     
    background-image: url("https://wayfaringrosie.files.wordpress.com/2015/02/img_7774-0.jpg?w=662");
    background-repeat: no-repeat;
    background-size: cover;
    
}
<%-- .navbar, .dropdown-menu{
background:rgba(255,255,255,0.25);
border: none;

.navbar-toggle .icon-bar{
    color: #fff;
    background: #fff; background: #8999A8;
} --%> 
</style>
</head>
<body>
	<div class="container-fluid">
		
		<nav class="navbar navbar-inverse navbar-fixed-top">
			<div class="container">
				<!-- Brand and toggle get grouped for better mobile display -->
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed"
						data-toggle="collapse" data-target="#navbar-collapse-1">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="#" style="color: white ;font-family:cursive">N O M A D I C</a>
				</div>

				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse" id="navbar-collapse-1">
					<ul class="nav navbar-nav navbar-right">
					
					
					<sec:authorize access="isAuthenticated()">
					<li><a style="color: white">Hi  <b><sec:authentication property="principal.username" /></b></a></li>
						<li><a href="${pageContext.request.contextPath}/perform_logout"><span
								class="glyphicon glyphicon-log-out"></span></a></li>
					</sec:authorize>
					<sec:authorize access="!isAuthenticated()">
						<li><a href="#log" data-toggle="modal" 
							data-target="#login"><span
								class="glyphicon glyphicon-log-in"></span>
							<!-- <input type= "submit" class ="btn btn-info" value="login"/>  -->
								</a></li>
						<li><a href="#reg" data-toggle="modal"
							data-target="#registration"> <span
								class="glyphicon glyphicon-user"></span>
							<!-- 	<input type= "submit" class ="btn btn-info" value="signup"/>  -->
						</a></li>
					</sec:authorize>
						
						<li><a
							class="btn btn-default btn-outline btn-circle collapsed"
							data-toggle="collapse" href="#nav-collapse1"
							aria-expanded="false" aria-controls="nav-collapse1">Dashboard</a>
						</li>  
					</ul>
					<ul class="collapse nav navbar-nav nav-collapse navbar-right" id="nav-collapse1">
						<li><a href="${pageContext.request.contextPath}/blog">Blog</a></li>
						<li><a href="${pageContext.request.contextPath}/forum">Forum</a></li>
						<li><a href="${pageContext.request.contextPath}/chat">Chat</a></li>
						<li><a href="#">Events</a></li>
						<li><a href="#">Jobs</a></li>
						<li><a href="#"></a></li>
					</ul>
					
				</div>
				</div>
				</nav>
				</div>
				
		


	<!-- ModalRegistration Form -->
	<div><%@include file="/WEB-INF/includes/ModalRegistration.jsp"%></div>
	<div><%@include file="/WEB-INF/includes/ModalLogin.jsp"%></div>
</body>
</html>

