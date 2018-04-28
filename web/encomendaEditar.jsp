<%@page contentType="text/html" pageEncoding="windows-1252"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
        <title>Editar Encomenda</title>
    </head>
    
    <body>
        <h1>Editar Encomenda</h1>
        <form action="FrontController?action=EditarEncomenda" method="post">
            Id: 
            <input type="text" name="txtId"/><br/>
            Descrição: 
            <input type="text" name="txtDescricao"/><br/>
            Peso: 
            <input type="text" name="txtPeso"/><br/>
            Id Cliente: 
            <input type="text" name="txtId_cliente"/><br/>
            Logradouro: 
            <input type="text" name="txtLogradouro"/><br/>
            Número: 
            <input type="text" name="txtNumero"/><br/>
            Bairro: 
            <input type="text" name="txtBairro"/><br/>
            Cep: 
            <input type="text" name="txtCep"/><br/>
            Valor: 
            <input type="text" name="txtValor"/><br/>
            Id Entregador: 
            <input type="text" name="txtId_entregador"/><br/>
            Data Pedido: 
            <input type="text" name="txtData_pedido"/><br/>
            Data Entrega: 
            <input type="text" name="txtData_entrega"/><br/>
            Situacao: 
            <input type="text" name="txtSituacao"/><br/>
            <input type="submit"/>
        </form>
    </body>
</html>
