<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
  <%
   String id=request.getParameter("id");
   String name=request.getParameter("name");
   String phone=request.getParameter("phone");
   String age=request.getParameter("age");
   String balance=request.getParameter("balance");
   String address=request.getParameter("address");
   out.println();
  %>
  <sql:setDataSource driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3406/customer" var="db" user="root" password=""/>
  <sql:update dataSource="${db}" var="in">
   INSERT INTO customer VALUES(<%=id%>,'<%=name%>',<%=phone%>,<%=age%>,<%=balance%>,'<%=address%>');
  </sql:update>
