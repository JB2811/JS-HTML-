<html>
 <head>
  <title>Fact</title>
 <script src="jquery-3.7.1.js"></script>
 </head>
 <body>
  <%!
   int factorial(int n)
   { if(n>1)
     { return n*factorial(n-1);}
     else
     {return 1;}}
  %>
  <%
   int n=Integer.parseInt(request.getParameter("n"));
   int result=factorial(n);
   out.println(result);
  %>
  <script>
   window.onload=function()
   { }
  </script>
 </body>
</html>