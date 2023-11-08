<%@page import="java.util.Date"%>
<!DOCTYPE HTML>
<html>
 <head>
  <title></title>
 </head>
 <body>
 <%
  Date date=new Date();
  int h=date.getHours();
  int mi=date.getMinutes();
  int s=date.getSeconds();
  int y=date.getYear();
  int d=date.getDate();
  int m=date.getMonth();
  String t="Date: "+Integer.toString(d)+"<br>Month: "+Integer.toString(m)+"<br>Year: "+Integer.toString(y+1900)+"<br>Hours: "+Integer.toString(h)+"<br>Minutes: "+Integer.toString(mi)+"<br>Seconds: "+Integer.toString(s);
 %>
 <p id="res">"<%=t%>"</p>
 </body>
</html>