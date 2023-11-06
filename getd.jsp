<!DOCTYPE HTML>
<html>
 <head>
  <title>getd</title>
 </head>
 <body>
   <form action="save.jsp" method="post" target="hiddenFrame">
    <label>Name:<input type="text" id="name" name="name"></label><br>
    <label>Phone:<input type="number" id="number" name="number"></label><br>
    <input type="submit" value="submit">
   </form>
   <div id="res"></div>
  <script>
   function reqInfo()
   { n=document.getElementById("name").value;
     nu=document.getElementById("number").value;
     top.frames["hiddenFrame"].location="save.jsp?n="+n+"&nu="+nu;}
   function displayInfo(s)
   { document.getElementById("res").innerHTML=s;}
  </script>
 </body>
</html>