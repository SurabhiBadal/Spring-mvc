<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html>
<head>
<title>Student Registration</title>
</head>
<body>

	<form:form action="processForm" modelAttribute="student">

		First Name : <form:input path="firstName" />
		<br>
		Last Name : <form:input path="lastName" />
		<br>
		Country <form:select path="country">
		<form:option value="India" label="India"/>
		<form:option value="Sri Lanka" label="Sri Lanka"/>
		<form:option value="USA" label="USa"/>
		</form:select>
		<input type="submit" value="Submit">

	</form:form>

</body>


</html>