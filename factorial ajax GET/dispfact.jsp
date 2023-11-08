<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
 <title>Customer Account Information</title>
 <script type="text/javascript">
 function requestInfo() {
 var sId = document.getElementById("txt").value;
 top.frames["hiddenFrame"].location = "Fact.jsp?id=" + sId;
 }
 function displayInfo(sText) {
 var divInfo = document.getElementById("divInfo");
 divInfo.innerHTML = sText;
 }
 </script>
</head>
<body>
 <p>Enter a number to find factorial:</p>
 <p>Factorial: <input type="text" id="txt" value="" /></p>
 <p><input type="button" value="Get Factorial" onclick="requestInfo()" /></p>
 <div id="divInfo"></div>
</body>
</html>