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
		<br>
		
		
		Java <form:radiobutton path="favouriteLanguage" value="Java" />
		JavaScript <form:radiobutton path="favouriteLanguage"
			value="JavaScript" />
		C <form:radiobutton path="favouriteLanguage" value="C" />
		<br>
		
		Operating System<br>
		
		Linux <form:checkbox path="operatingSystem" value="Linux" />
		<br>
		Mac <form:checkbox path="operatingSystem" value="Mac" />
		<br>
		Windows<form:checkbox path="operatingSystem" value="Windows" />
		<br>


		<input type="submit" value="Submit">

	</form:form>

</body>


</html>