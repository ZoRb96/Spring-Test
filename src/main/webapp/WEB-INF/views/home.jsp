<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">

<title><c:out value="${page }"></c:out></title>
</head>
<body>

	<div class="container">
		<div class="row">
			<div class="col-md-6 text-center">
				<a href='<c:url value='/add'></c:url>'>add list</a>

			</div>
			<div class="col-md-6 text-center">
				<a href='<c:url value='/home'></c:url>'>view list</a>
			</div>

		</div>


		<div class="row">

			<c:if test="${page=='home' }">
				<h1>home page</h1>

				<c:forEach items="${empList }" var="data">
					<div class="card">
						<div class="card-header">
							<c:out value="${data.empId }"></c:out>
						</div>
						<div class="card-body">
							<h5 class="card-title">
								<c:out value="${data.empName }"></c:out>
							</h5>
							<p class="card-text">
								<c:out value="${data.empEmailString }"></c:out>
							</p>
							<p class="card-text">
								<c:out value="${data.empPhno }"></c:out>
							</p>
						</div>
					</div>
				</c:forEach>

			</c:if>

			<c:if test="${page=='add' }">
				<h1>add page</h1>

				<form:form action="saveForm" method="post" modelAttribute="modal">

					<div class="form-group">
						<form:input path="empName" class="form-control"
							placeholder="Enter Employee Name" />
					</div>

					<div class="form-group">
						<form:input path="empPhno" class="form-control"
							placeholder="Enter Employee Phone No" />
					</div>

					<div class="form-group">
						<form:input path="empEmailString" class="form-control"
							placeholder="Enter Employee Email" />
					</div>

					<div class="container">
						<button class="btn btn-primary">ADD</button>
					</div>

				</form:form>

			</c:if>

		</div>


	</div>


	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<!-- <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script> -->
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>
</body>
</html>