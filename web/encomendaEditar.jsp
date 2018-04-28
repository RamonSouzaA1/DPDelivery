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
            Descri��o: 
            <input type="text" name="txtDescricao"/><br/>
            Peso: 
            <input type="text" name="txtPeso"/><br/>
            Id Cliente: 
            <input type="text" name="txtId_cliente"/><br/>
            Logradouro: 
            <input type="text" name="txtLogradouro"/><br/>
            N�mero: 
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
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js" integrity="sha384-uefMccjFJAIv6A+rW+L4AHf99KvxDjWSu1z9VI8SKNVmz4sk7buKt/6v9KI65qnm" crossorigin="anonymous"></script>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js" integrity="sha384-cs/chFZiN24E4KMATLdqdvsezGxaGsi4hLGOzlXwp5UZB1LY//20VyM2taTB4QvJ" crossorigin="anonymous"></script>
    </body>
</html>
