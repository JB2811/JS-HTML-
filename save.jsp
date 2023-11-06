<%@page import="java.io.*"%>
<!DOCTYPE HTML>
<html>
 <head>
  <title>save</title>
 </head>
 <body>
  <%
   String n=null;
   String nu=null;
   n=request.getParameter("name");
   nu=request.getParameter("number");
   String r=n+" "+nu;
   FileWriter f=new FileWriter("C:/Users/beera/Downloads/ans.txt",true);
   BufferedWriter b=new BufferedWriter(f);
   b.append(r);
   b.close();
   File d=new File("C:/Users/beera/Downloads/ans.txt");
   BufferedReader e=new BufferedReader(new FileReader(d));
   r=e.readLine();
   n="";
   while(r!=null)
   { n+=r;
     r=e.readLine();}
  e.close();
  %>
 <script>
  window.onload=function()
  { top.frames["displayFrame"].displayInfo("<%=n%>")}
 </script>
 </body> 
</html>