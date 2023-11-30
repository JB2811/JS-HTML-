<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<html>
<body>
<c:set var="a" value="0"/>
<c:set var="b" value="1"/>
<c:out value="${a}"/>
<c:out value="${b}"/>
<c:forEach var="i" begin="0" end="5">
 <c:out value="${a+b}"/>
 <c:set var="c" value="${a+b}"/>
 <c:set var="a" value="${b}"/>
 <c:set var="b" value="${c}"/>
</c:forEach>
</body>
</html>
