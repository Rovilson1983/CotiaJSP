<%@ include file="referencias.jsp" %>
<html>
<head>
<title>Página Principal</title>
</head>
<body>
<form>
<%
if(session.getAttribute("userid")==null)
{
    response.sendRedirect("erroLogin.jsp");
}
%>
<br><br>
<center>Principal</center>
    
 </form>
</body>
</html>