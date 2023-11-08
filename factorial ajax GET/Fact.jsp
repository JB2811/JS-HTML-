<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<!DOCTYPE html >
<html >
 <head>
 <title>Get Factorial</title>
 <script type="text/javascript">
 window.onload = function () {
 var divInfoToReturn = document.getElementById("divInfoToReturn");
top.frames["displayFrame"].displayInfo(divInfoToReturn.innerHTML);
 };

 </script>
 </head>
 <body>
<%!
 int Factorial(int id){
 int fact=1;
int i;
for( i=1;i<=id;i++)
{ fact=fact*i;
}
return fact;
 }
%>
<%
 String strId = request.getParameter("id");
 int id = -1;
 int message ;
 try {
 id = Integer.parseInt(strId);
 message = Factorial(id);
 } catch (Exception ex) {
 message = 0;
 }
%>
 <div id="divInfoToReturn"><h2>Factorial is....<%= message %></h2></div>
 </body>
</html>