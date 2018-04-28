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
        <h1>Cadastro de Veículos</h1>
        <form action="FrontController?action=EditarCliente" method="post">
            Entre com seu ID: 
            <input type="text" name="txtId"/><br/>
            Entre com seu Nome: 
            <input type="text" name="txtNome"/><br/>
            Entre com seu Logradouro: 
            <input type="text" name="txtLogradouro"/><br/>
            Entre com seu Número: 
            <input type="text" name="txtNumero"/><br/>
            Entre com seu Bairro: 
            <input type="text" name="txtBairro"/><br/>
            Entre com seu Cep: 
            <input type="text" name="txtCep"/><br/>
            Entre com seu Telefone: 
            <input type="text" name="txtTelefone"/><br/>
            Entre com seu Celular: 
            <input type="text" name="txtCelular"/><br/>

            <input type="submit"/>
        </form>
    </body>
</html>
