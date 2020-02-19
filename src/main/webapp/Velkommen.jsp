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

    <style>
    table, th, td {
    border: 1px solid black;

    }

    </style>

    <title>Title</title>
</head>
<body>

<h1> Velkommen , du er nu lokket ind</h1>

Du er logget ind med navnet : ${requestScope.minAtribut}

<br>
<br>


her kommer en liste af de haarde drenge :

<br>

<c:forEach var="element" items="${requestScope.rockerListe}">

    ${element}
    <br>

</c:forEach>

<br>
<br>
<br>

så skal vi have lys i lagkagen og det er ikke engang løgn

<br>
<br>

<table>
    <tr>
        <th>Kælenavn</th>
        <th>lys i lagkagen</th>
        <th>udgifter til lys</th>

    </tr>
    <tr>

<c:forEach var="element" items="${requestScope.mapRokkere}">


           <td> ${element.key} </td>

           <td> ${element.value}  </td>
           <td> 17,25 kr  </td>

    </tr>
    <tr>

</c:forEach>


</table>



<br>
<br>








her kommer der lige et set med rokkkere

<br>

<c:forEach var="element" items="${requestScope.setRokkere}">

    ${element}
    <br>

</c:forEach>



</body>
</html>
