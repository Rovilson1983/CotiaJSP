<%@ include file="referencias.jsp" %>
<%
String user = request.getParameter("username");
String pass = request.getParameter("password"); 
    Conexao.connect();
    MongoDatabase db = Conexao.getDatabase();
    MongoCollection<Document> collection = db.getCollection("Users");
    Document cursor = collection.find(new Document("user", user)).first();
    if (cursor != null && cursor.getString("password").equals(pass)) {
        // Autentica��o bem sucedida. Defina o usu�rio na sess�o e redirecione para a p�gina inicial.
        session.setAttribute("userid", user);
        response.sendRedirect("principal.jsp");
    } else {
        // Autentica��o falhou. Exiba uma mensagem de erro na p�gina de login.
        out.print("Erro ao logar: verifique usu�rio e senha");
    }
Conexao.close();
%>