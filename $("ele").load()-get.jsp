Note : spaces in input string passed in url will generate an error
 
<html>
 <body>
  Name:<input type="text" name="name" id="name"><br>
  Rollno:<input type="number" name="roll" id="roll">
  <button onclick="func()">submit</button>
  <div id="res"></div>
  <script src="jquery-3.7.1.js"></script>
  <script>
   function func()
   { $("#res").load("success.jsp?name="+$("#name").val()+"&roll="+$("#roll").val());}
  </script>
 </body>
</html>
