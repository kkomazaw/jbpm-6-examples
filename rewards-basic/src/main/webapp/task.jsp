<%@ page import="org.kie.api.task.model.TaskSummary" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
<title>Task management</title>
</head>
<body>
<% String user = request.getParameter("user"); %>
<p><%= user %>さんのタスク</p>
<table border="1">
<tr>
<th>タスク名</th>
<th>タスクID</th>
<th>プロセスインスタンスID</th>
<th>操作</th>
</tr>
<% for (TaskSummary task : (List<TaskSummary>)request.getAttribute("taskList")) { %>
<tr>
<td><%= task.getName() %></td>
<td><%= task.getId() %></td>
<td><%= task.getProcessInstanceId() %></td>
<td><a href="task?user=<%= user %>&taskId=<%= task.getId() %>&cmd=approve">承認</a></td>
</tr>
<% } %>
</table>
</body>
</html>