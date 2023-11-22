<!DOCTYPE HTML>
<html>
 <head>
  <title>dispfact</title>
 </head>
 <body>
  Enter number: <input type="number" id="num"><br>
  <button id="bu">submit</button>
  <p id="res"></p>
 <script src="jquery-3.7.1.js"></script>
 <script>
  function action1()
  { n=document.getElementById("num").value;	
    $.get("Fact - jquery get.jsp?n="+n,saveResult);}
  function saveResult(n,s)
  { document.getElementById("res").innerHTML="Factorial is "+n+" ";}
  window.onload=function()
  { document.getElementById("bu").addEventListener("click",action1,false);}
 </script>
 </body>
</html>