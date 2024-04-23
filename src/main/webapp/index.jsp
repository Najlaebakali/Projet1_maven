<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <title>Question - 2</title>
</head>
<body>
<form method="post" action="">

    Veuillez entrer un nombre
    <input type="text" name="nbr" value="${param.nbr}" />
    <input type="submit" value="Submit" />

    <c:set var="nbr" value="${param.nbr}" />
    <c:set var="premier" value="1" />

    <c:if  test="${nbr != 0}" >
     <c:forEach var="i" begin="${2}" end="${nbr/2}">
        <c:if test="${nbr % i == 0 }">
            <c:set var="premier" value ="0" />
        </c:if>
    </c:forEach>

    </c:if>
    <c:if test="${premier == 0}">
        <h3> ${nbr} est un nombre premier</h3>
    </c:if>
    <c:if test="${premier != 0}">
        <h3>${nbr} est un nombre non premier</h3>
    </c:if>
</form>
</body>
</html>