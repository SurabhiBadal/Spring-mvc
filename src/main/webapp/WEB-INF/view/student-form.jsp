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
			<form:options items="${student.countryOptions}" />
		</form:select>
		
		
		Java <form:radiobutton path="favouriteLanguage" value="Java" />
		JavaScript <form:radiobutton path="favouriteLanguage"
			value="JavaScript" />
		C <form:radiobutton path="favouriteLanguage" value="C" />
		<input type="submit" value="Submit">

	</form:form>

</body>


</html>