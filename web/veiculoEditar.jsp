<%@page contentType="text/html" pageEncoding="windows-1252"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
        <title>Editar Veículo</title>
    </head>
    <body>
        <h1>Editar Veículo</h1>
        <form action="FrontController?action=EditarVeiculo" method="post">
            Id: 
            <input type="text" name="txtId"/><br/>
            Placa: 
            <input type="text" name="txtPlaca"/><br/>
            Marca: 
            <input type="text" name="txtMarca"/><br/>
            Modelo: 
            <input type="text" name="txtModelo"/><br/>
            Situacao: 
            <input type="text" name="txtSituacao"/><br/>
            <input type="submit"/>
        </form>
    </body>
</html>
