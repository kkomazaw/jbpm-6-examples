<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
<title>Rewards Basic example</title>
</head>
<body>
<p>Rewards Basic サンプル</p>
<p><%= request.getAttribute("message") == null ? "" : request.getAttribute("message") %></p>
<ul>
<li><a href="startProcess.jsp">評価プロセスを開始</a></li>
<li><a href="task?user=jiri&cmd=list">Jiriさんのタスク</a></li>
<li><a href="task?user=mary&cmd=list">Maryさんのタスク</a></li>
</ul>
</body>
</html>