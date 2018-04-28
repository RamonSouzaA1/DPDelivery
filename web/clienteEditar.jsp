<%@page contentType="text/html" pageEncoding="windows-1252"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
        <title>Editar Cliente</title>
    </head>
    
    <body>
        <h1>Editar Cliente</h1>
        <form action="FrontController?action=EditarCliente" method="post">
            ID: 
            <input type="text" name="txtId"/><br/>
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
