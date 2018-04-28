<%@page contentType="text/html" pageEncoding="windows-1252"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
        <title>Cadastro de Entregador</title>
    </head>
    
    <body>
        <h1>Cadastro de Entregador</h1>
        <form action="FrontController?action=GravarEntregador" method="post">
            Nome: 
            <input type="text" name="txtNome"/><br/>
            Id do Veículo: 
            <input type="text" name="txtId_veiculo"/><br/>
            <input type="submit"/>
        </form>
    </body>
</html>
