<%@page contentType="text/html" pageEncoding="windows-1252"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
        <title>Cadastro de Veículo</title>
    </head>
    <body>
        <h1>Cadastro de Veículo</h1>
        <form action="FrontController?action=GravarVeiculo" method="post">
            Placa: 
            <input type="text" name="txtPlaca"/><br/>
            Marca: 
            <input type="text" name="txtMarca"/><br/>
            Modelo: 
            <input type="text" name="txtModelo"/><br/>
            <input type="submit"/>
        </form>
    </body>
</html>
