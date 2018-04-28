<%@page contentType="text/html" pageEncoding="windows-1252"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
        <title>Apagar Entregador</title>
    </head>
    <body>
        <h1>Apagar Entregador</h1>
            <form action="FrontController?action=ApagarEntregador" method="post">
                Digite o ID do entregador: 
                <input type="text" name="textId"/><br/>
                <input type="submit"/>
            </form>
    </body>
</html>
