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
        <form action="FrontController?action=GravarEncomenda" method="post">
            Entre com seu Descrição: 
            <input type="text" name="txtDescricao"/><br/>
            Entre com seu Peso: 
            <input type="text" name="txtPeso"/><br/>
            Entre com seu Id Cliente: 
            <input type="text" name="txtId_cliente"/><br/>
            Entre com seu Logradouro: 
            <input type="text" name="txtLogradouro"/><br/>
            Entre com seu Número: 
            <input type="text" name="txtNumero"/><br/>
            Entre com seu Valor: 
            <input type="text" name="txtValor"/><br/>
            Entre com seu Bairro: 
            <input type="text" name="txtBairro"/><br/>
            Entre com seu Cep: 
            <input type="text" name="txtCep"/><br/>
            Entre com seu Id Entregador: 
            <input type="text" name="txtId_entregador"/><br/>
            Entre com seu situacao: 
            <input type="text" name="txtSituacao"/><br/>
            Entre com seu Data Pedido: 
            <input type="text" name="txtData_pedido"/><br/>
            Entre com seu Data Entrega: 
            <input type="text" name="txtData_entrega"/><br/>
            <input type="submit"/>
        </form>
    </body>
</html>
