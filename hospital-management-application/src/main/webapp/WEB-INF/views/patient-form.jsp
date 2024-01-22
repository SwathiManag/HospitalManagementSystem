<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Hospital Management Application</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js"
	integrity="sha512-v2CJ7UaYy4JwqLDIrZUI/4hqeoQieOmAZNXBeQyjo21dadnwR+8ZaIJVT8EE2iyI61OV8e6M8PP2/4hpQINQ/g=="
	crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/js/bootstrap.min.js"
	integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
	crossorigin="anonymous"></script>
</head>
<body>
	<div class="container">
		<div class="col-md-offset-2 col-md-7">
			<h2 class="text-center">Hospital Management Application</h2>
			<div class="panel panel-info">
				<div class="panel-heading">
					<div class="panel-title">Add Patient</div>
				</div>
				<div class="panel-body">
					<form:form action="addPatient" cssClass="form-horizontal"
						method="post" modelAttribute="patient">

						<!-- need to associate this data with patient id -->
						<form:hidden path="id" />

						<div class="form-group">
							<label for="name" class="col-md-3 control-label">Name</label>
							<div class="col-md-9">
								<form:input path="name" cssClass="form-control" />
							</div>
						</div>
						<div class="form-group">
							<label for="dob" class="col-md-3 control-label">Date Of
								Birth </label>
							<div class="col-md-9">
								<form:input path="dob" cssClass="form-control" />
							</div>
						</div>

						<div class="form-group">
							<label for="emailId" class="col-md-3 control-label">Email Id</label>
							<div class="col-md-9">
								<form:input path="emailId" cssClass="form-control" />
							</div>
						</div>
						
						<div class="form-group">
							<label for="address" class="col-md-3 control-label">Address</label>
							<div class="col-md-9">
								<form:input path="address" cssClass="form-control" />
							</div>
						</div>
						
						<div class="form-group">
							<label for="phoneNumber" class="col-md-3 control-label">Phone Number</label>
							<div class="col-md-9">
								<form:input path="phoneNumber" cssClass="form-control" />
							</div>
						</div>
						
						<div class="form-group">
							<label for="providerName" class="col-md-3 control-label">Provider Name</label>
							<div class="col-md-9">
								<form:input path="providerName" cssClass="form-control" />
							</div>
						</div>

						<div class="form-group">
							<!-- Button -->
							<div class="col-md-offset-3 col-md-9">
								<form:button cssClass="btn btn-primary">Submit</form:button>
							</div>
						</div>

					</form:form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>