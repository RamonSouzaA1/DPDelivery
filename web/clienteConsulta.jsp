<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
        <title>Consulta Cliente</title>
    </head>
    <body>
        <h1>Consulta Clientes</h1>
        <table>
            <tr>
                <td>id</td>
                <td>nome</td>
                <td>logradouro</td>
                <td>numero</td>
                <td>bairro</td>
                <td>cep</td>
                <td>telefone</td>
                <td>celular</td>
            </tr>
            <c:forEach items="${clientes}" var="cliente">
                <tr>
                    <td><c:out value="${cliente.id}"></c:out></td>
                    <td><c:out value="${cliente.nome}"></c:out></td>
                    <td><c:out value="${cliente.logradouro}"></c:out></td>
                    <td><c:out value="${cliente.numero}"></c:out></td>
                    <td><c:out value="${cliente.bairro}"></c:out></td>
                    <td><c:out value="${cliente.cep}"></c:out></td>
                    <td><c:out value="${cliente.telefone}"></c:out></td>
                    <td><c:out value="${cliente.celular}"></c:out></td>
                    </tr>
            </c:forEach>
        </table>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js" integrity="sha384-uefMccjFJAIv6A+rW+L4AHf99KvxDjWSu1z9VI8SKNVmz4sk7buKt/6v9KI65qnm" crossorigin="anonymous"></script>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js" integrity="sha384-cs/chFZiN24E4KMATLdqdvsezGxaGsi4hLGOzlXwp5UZB1LY//20VyM2taTB4QvJ" crossorigin="anonymous"></script>
    </body>
</html>
