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
            <table>
                <tr>
                    <td>Id: </td>
                    <td><input type="text" name="txtId"/></td>
                </tr>
                <tr>
                    <td>Placa: </td>
                    <td><input type="text" name="txtPlaca"/></td>
                </tr>
                <tr>
                    <td>Marca: </td>
                    <td><input type="text" name="txtMarca"/></td>
                </tr>
                <tr>
                    <td>Modelo: </td>
                    <td><input type="text" name="txtModelo"/></td>
                </tr>
                <tr>
                    <td>Situacao: </td>
                    <td>
                        <select name="txtSituacao">
                            <option value="Disponível">Disponível</option>
                            <option value="Em serviço">Em serviço</option>
                            <option value="Oficina">Oficina</option>
                            <option value="Em desuso">Em desuso</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td><input type="submit"/></td>
                </tr>
            </table>
        </form>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js" integrity="sha384-uefMccjFJAIv6A+rW+L4AHf99KvxDjWSu1z9VI8SKNVmz4sk7buKt/6v9KI65qnm" crossorigin="anonymous"></script>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js" integrity="sha384-cs/chFZiN24E4KMATLdqdvsezGxaGsi4hLGOzlXwp5UZB1LY//20VyM2taTB4QvJ" crossorigin="anonymous"></script>
    </body>
</html>
