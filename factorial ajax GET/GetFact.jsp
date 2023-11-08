<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
 <title>Hidden Frame GET Example</title>
</head>
<frameset rows="100%,0" style="border: 0px">
 <frame name="displayFrame" src="dispfact.jsp" noresize="noresize" />
 <frame name="hiddenFrame" src="about:blank" noresize="noresize" />
</frameset>
</html>
