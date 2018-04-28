<%@page contentType="text/html" pageEncoding="windows-1252"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
        <title>Apagar Encomenda</title>
    </head>
    <body>
        <h1>Apagar Encomenda</h1>
            <form action="FrontController?action=ApagarEncomenda" method="post">
                Digite o ID da encomenda
                <input type="text" name="textId"/><br/>
                <input type="submit"/>
            </form>
    </body>
</html>
