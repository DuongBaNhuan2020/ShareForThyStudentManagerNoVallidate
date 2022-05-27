<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
	"http://www.w3.org/TR/html4/loose.dtd">
<html lang="vn">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>New student</title>
</head>
<body>
    <div>
        <div class="main">
            <h1>New Student</h1>
        <form:form action="saveStudent" method="post" modelAttribute="student">
        <table>
                <tr>
                    <th><form:label path="name">*name:</form:label></th>
                    <td>	<form:input path="name"/><br/></td>
                </tr>
                <tr>
                    <th><form:label path="male">Gender:</form:label></th>
                    <td><form:checkbox path="male"/> Male</td>
                </tr>
                <tr>
                    <th><form:label path="birthday">Birthday:</form:label></th>
                    <td><form:input type="date" path="birthday"/><br/></td>
                </tr>
                <tr>
                    <th><form:label path="placeOfBirth">Place of birth:</form:label></th>
                    <td><form:input path="placeOfBirth"/><br/></td>
                </tr>
                <tr>
                    <th><form:label path="address">Address:</form:label></th>
                    <td><form:input path="address"/><br/></td>
                </tr>
                <tr>
                    <th><form:label path="depName">Department:</form:label></th>
                    <td><form:select path="depName" items="${professionList}" /><br/></td>
                </tr>
                 <tr>
                    <td><form:button>Register</form:button></td>
                    <td><button onclick="window.location='/'">Cancel</button></td>
                </tr>
              </table>
		</form:form>
        </div>
    </div>
</body>
</html>