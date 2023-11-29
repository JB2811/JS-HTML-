<html>
 <body>
  Name:<input type="text" name="name" id="name"><br>
  Rollno:<input type="number" name="roll" id="roll">
  <button onclick="func()">submit</button>
  <div id="res"></div>
  <script src="jquery-3.7.1.js"></script>
  <script>
   function func()
   { $.post("success.jsp",{"name":$("#name").val(),"roll":$("#roll").val()},function(r)
	 					           		    { $("#res").text(r);});}
  </script>
 </body>
</html>
