<html>
 <body>
  Control: <input type="text" id="control">
  <button id="sub" onclick="getval()">Submit</button>
  <div id="res"></div>
  <script src=jquery-3.7.1.js></script>
  <script>
   function getval()
   { val=document.getElementById("control").value;
     $.ajax({ type:"GET",url:"page.jsp?val="+val,success:function(val,s){ document.getElementById("res").innerHTML=val*4;}});}
  </script>
 </body>
</html>
