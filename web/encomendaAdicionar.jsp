<%@page contentType="text/html" pageEncoding="windows-1252"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
        <title>Cadastro de Encomenda</title>
    </head>
    
    <body>
        <h1>Cadastro de Encomenda</h1>
        <form action="FrontController?action=GravarEncomenda" method="post">
            <table>
                <tr>
                    <td>Descrição:</td>
                    <td><input type="text" name="txtDescricao"/></td>
                </tr>
                <tr>
                    <td>Peso: </td>
                    <td><input type="text" name="txtPeso"/></td>
                </tr>
                <tr>
                    <td>Id Cliente: </td>
                    <td><input type="text" name="txtId_cliente"/></td>
                </tr>
                <tr>
                    <td>Logradouro: </td>
                    <td><input type="text" name="txtLogradouro"/></td>
                </tr>
                <tr>
                    <td>Número: </td>
                    <td><input type="text" name="txtNumero"/></td>
                </tr>
                <tr>
                    <td>Bairro: </td>
                    <td><input type="text" name="txtBairro"/></td>
                </tr>
                <tr>
                    <td>Cep: </td>
                    <td><input type="text" name="txtCep"/></td>
                </tr>
                <tr>
                    <td>Valor: </td>
                    <td><input type="text" name="txtValor"/></td>
                </tr>
                <tr>
                    <td>Id Entregador: </td>
                    <td><input type="text" name="txtId_entregador"/></td>
                </tr>
                <tr>
                    <td>Data Pedido: </td>
                    <td><input type="text" name="txtData_pedido"/></td>
                </tr>
                <tr>
                    <td>Data Entrega: </td>
                    <td><input type="text" name="txtData_entrega"/></td>
                </tr>
                <tr><td><input type="submit"/></td></tr>
            </table>
        </form>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js" integrity="sha384-uefMccjFJAIv6A+rW+L4AHf99KvxDjWSu1z9VI8SKNVmz4sk7buKt/6v9KI65qnm" crossorigin="anonymous"></script>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js" integrity="sha384-cs/chFZiN24E4KMATLdqdvsezGxaGsi4hLGOzlXwp5UZB1LY//20VyM2taTB4QvJ" crossorigin="anonymous"></script>
    </body>
</html>
