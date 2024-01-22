<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" >
<title>Hospital Management Application</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js" integrity="sha512-v2CJ7UaYy4JwqLDIrZUI/4hqeoQieOmAZNXBeQyjo21dadnwR+8ZaIJVT8EE2iyI61OV8e6M8PP2/4hpQINQ/g==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</head>
<body>
<div class="container">
  <div class="col-md-offset-1 col-md-10">
   <h2>Patient Administrator</h2>
   <hr />

   <input type="button" value="Add Patient"
    onclick="window.location.href='showForm'; return false;"
    class="btn btn-primary" />
    <br/><br/>
   <div class="panel panel-info">
    <div class="panel-heading">
     <div class="panel-title">Patient List</div>
    </div>
    <div class="panel-body">
     <table class="table table-striped table-bordered">
      <tr>
       <th>Name</th>
       <th>DOB</th>
       <th>Email Id</th>
       <th>Address</th>
       <th>Phone</th>
       <th>Provider Name</th>
       <th>Action</th>
      </tr>

      <!-- loop over and print our patients -->
      <c:forEach var="tempPatient" items="${patients}">

       <!-- construct an "update" link with patient id -->
       <c:url var="updateLink" value="/patient/updateForm">
        <c:param name="patientId" value="${tempPatient.id}" />
       </c:url>

       <!-- construct an "delete" link with patient id -->
       <c:url var="deleteLink" value="/patient/delete">
        <c:param name="patientId" value="${tempPatient.id}" />
       </c:url>

       <tr>
        <td>${tempPatient.name}</td>
        <td>${tempPatient.dob}</td>
        <td>${tempPatient.emailId}</td>
        <td>${tempPatient.address}</td>
        <td>${tempPatient.phoneNumber}</td>
        <td>${tempPatient.providerName}</td>

        <td>
         <!-- display the update link --> <a href="${updateLink}">Update</a>
         | <a href="${deleteLink}"
         onclick="if (!(confirm('Are you sure you want to delete this patient?'))) return false">Delete</a>
        </td>

       </tr>

      </c:forEach>

     </table>

    </div>
   </div>
  </div>

 </div>
</body>
</html>