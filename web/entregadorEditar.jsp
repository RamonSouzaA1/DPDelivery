<%@page contentType="text/html" pageEncoding="windows-1252"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
        <title>Editar Entregador</title>
    </head>
    
    <body>
        <h1>Editar Entregador</h1>
        <form action="FrontController?action=EditarEntregador" method="post">
            Id: 
            <input type="text" name="txtId"/><br/>
            Nome: 
            <input type="text" name="txtNome"/><br/>
            Id do Veículo: 
            <input type="text" name="txtId_veiculo"/><br/>
            Situação: 
            <input type="text" name="txtSituacao"/><br/>
            <input type="submit"/>
        </form>
    </body>
</html>
