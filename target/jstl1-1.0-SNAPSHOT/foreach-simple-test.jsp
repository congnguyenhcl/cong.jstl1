<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
   String[] cities ={"San Francisco","Chicago","San Diego"};
   pageContext.setAttribute("myCities",cities);
%>
<html>
<head>
    <title>Java Standard Tag Library (JSTL) Test</title>
</head>
<body>
<c:forEach var="tempCity" items="${myCities}">
    ${tempCity}<br>

</c:forEach>
</body>
</html>
