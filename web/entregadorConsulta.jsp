<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
        <title>Consulta Entregador</title>
    </head>
    <body>
        <h1>Consulta Entregador</h1>
        <table>
            <tr>
                <td>id</td>
                <td>nome</td>
                <td>situacao</td>
                <td>id_veiculo</td>
            </tr>
            <c:forEach items="${entregadores}" var="entregador">
                <tr>
                    <td><c:out value="${entregador.id}"></c:out></td>
                    <td><c:out value="${entregador.nome}"></c:out></td>
                    <td><c:out value="${entregador.situacao}"></c:out></td>
                    <td><c:out value="${entregador.id_veiculo}"></c:out></td>
                    </tr>
            </c:forEach>
        </table>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js" integrity="sha384-uefMccjFJAIv6A+rW+L4AHf99KvxDjWSu1z9VI8SKNVmz4sk7buKt/6v9KI65qnm" crossorigin="anonymous"></script>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js" integrity="sha384-cs/chFZiN24E4KMATLdqdvsezGxaGsi4hLGOzlXwp5UZB1LY//20VyM2taTB4QvJ" crossorigin="anonymous"></script>
    </body>
</html>
