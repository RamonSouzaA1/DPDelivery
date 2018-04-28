<%-- 
    Document   : contatoAdicionar
    Created on : 09/04/2018, 21:28:04
    Author     : Ramon
--%>

<%@page contentType="text/html" pageEncoding="windows-1252"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
        <title>Cadastro de Contatos</title>
    </head>
    
    <body>
        <h1>Cadastro de Entregador</h1>
        <form action="FrontController?action=EditarEntregador" method="post">
            Entre com seu Id: 
            <input type="text" name="txtId"/><br/>
            Entre com seu Nome: 
            <input type="text" name="txtNome"/><br/>
            Entre com seu Situação: 
            <input type="text" name="txtSituacao"/><br/>
            Entre com seu Id do Veículo: 
            <input type="text" name="txtId_veiculo"/><br/>

            <input type="submit"/>
        </form>
    </body>
</html>
