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
        <form action="FrontController?action=GravarVeiculo" method="post">
            Entre com seu placa: 
            <input type="text" name="txtPlaca"/><br/>
            Entre com seu marca: 
            <input type="text" name="txtMarca"/><br/>
            Entre com seu modelo: 
            <input type="text" name="txtModelo"/><br/>
            Entre com seu situacao: 
            <input type="text" name="txtSituacao"/><br/>
            <input type="submit"/>
        </form>
    </body>
</html>
