<!DOCTYPE html>
<html>
<body>
<div id="dem">
<h2>The XMLHttpRequest Object</h2>
<button type="button" onclick="loadDoc()">Change Content</button>
</div>
<script>
function loadDoc()
{ xhr=new XMLHttpRequest();
  xhr.open("GET","ans.txt",true);
  xhr.onreadystatechange=function()
  { if(xhr.readyState==4 && xhr.status==200)
    { document.getElementById("dem").innerHTML=this.responseText;}};
  xhr.send();}
</script>
</body>
</html>