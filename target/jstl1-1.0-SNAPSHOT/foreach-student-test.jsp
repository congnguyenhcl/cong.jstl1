<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.List" %>
<%@ page import="com.codingnotes.jstl1.Student" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Arrays" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    List<Student> studentData = Arrays.asList(new Student("John", "Doe", false),
            new Student("Maxwell", "Johnson", false),
            new Student("Mary", "Digger", true));
    pageContext.setAttribute("myStudents",studentData);

%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<table border="">
    <tr>
        <th>First Name</th>
        <th>Last Name</th>
        <th>Gold Customer</th>
    </tr>

</table>
<c:forEach var="tempStudent" items="${myStudents}">
    ${tempStudent.firstName}    ${tempStudent.lastName}    ${tempStudent.goldCustomer}
<br>

</c:forEach>

</body>
</html>
