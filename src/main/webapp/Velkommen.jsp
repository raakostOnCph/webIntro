<%--
  Created by IntelliJ IDEA.
  User: nbh
  Date: 16/02/2020
  Time: 16.58
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<h1> Velkommen , du er nu lokket ind</h1>

Du er logget ind med navnet : ${requestScope.minAtribut}

<br>
<br>

vi printer lige arraylisten ud:

<br>

<c:forEach var="element" items="${requestScope.minArayliste}">

    ${element}
    <br>



</c:forEach>

jamen kan ikke også lige printet værdierne i et ud på hva?
jo det kan jeg da sikker godt.
<br>

<c:forEach var="element" items="${requestScope.mitMap}">


    ${element.key} , ${element.value}
    <br>



</c:forEach>








</body>
</html>
