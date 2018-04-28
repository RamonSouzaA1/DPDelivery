<%-- 
    Document   : contatoApagar
    Created on : 05/04/2018, 00:23:04
    Author     : Ramon
--%>

<%@page contentType="text/html" pageEncoding="windows-1252"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Apagar Encomenda</h1>
            <form action="FrontController?action=ApagarEncomenda" method="post">
                Digite o ID do encomenda
                <input type="text" name="textId"/><br/>
                <input type="submit"/>
            </form>
    </body>
</html>
