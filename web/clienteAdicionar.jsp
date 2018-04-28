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
        <title>Cadastro de Clientes</title>
    </head>
    
    <body>
        <h1>Cadastro de Clientes</h1>
        <form action="FrontController?action=GravarCliente" method="post">
            Nome: 
            <input type="text" name="txtNome"/><br/>
            Logradouro: 
            <input type="text" name="txtLogradouro"/><br/>
            Número: 
            <input type="text" name="txtNumero"/><br/>
            Bairro: 
            <input type="text" name="txtBairro"/><br/>
            Cep: 
            <input type="text" name="txtCep"/><br/>
            Telefone: 
            <input type="text" name="txtTelefone"/><br/>
            Celular: 
            <input type="text" name="txtCelular"/><br/>

            <input type="submit"/>
        </form>
    </body>
</html>
