<%--
  Created by IntelliJ IDEA.
  User: nbh
  Date: 16/02/2020
  Time: 16.58
  To change this template use File | Settings | File Templates.
--%>
<<<<<<< HEAD

=======
>>>>>>> 6ed45b3b56b054db4d97e06399434d59baa63e57
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


her kommer en liste af de haarde drenge :

<br>

<c:forEach var="element" items="${requestScope.rockerListe}">

    ${element}
    <br>

</c:forEach>

<br>
<br>
<br>

så skal vi have lys i lagkagen

<br>
<br>

<c:forEach var="element" items="${requestScope.mapRokkere}">


            ${element.key} skal have ${element.value} lys i lagkagen !
            <br>
</c:forEach>

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
