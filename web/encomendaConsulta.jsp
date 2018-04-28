<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
        <title>Consulta Encomenda</title>
    </head>
    <body>
        <h1>Consulta Encomenda</h1>
        <table>
            <tr>
                <td>id</td>
                <td>descricao</td>
                <td>peso</td>
                <td>id_remetente</td>
                <td>id_destinatario</td>
                <td>id_entregador</td>
                <td>valor</td>
                <td>situacao</td>
                <td>data_pedido</td>
                <td>data_entrega</td>
            </tr>
            <c:forEach items="${encomendas}" var="encomenda">
                <tr>          
                    <td><c:out value="${encomenda.id}"></c:out></td>
                    <td><c:out value="${encomenda.descricao}"></c:out></td>
                    <td><c:out value="${encomenda.peso}"></c:out></td>
                    <td><c:out value="${encomenda.id_cliente}"></c:out></td>
                    <td><c:out value="${encomenda.logradouro}"></c:out></td>
                    <td><c:out value="${encomenda.numero}"></c:out></td>
                    <td><c:out value="${encomenda.valor}"></c:out></td>
                    <td><c:out value="${encomenda.bairro}"></c:out></td>
                    <td><c:out value="${encomenda.cep}"></c:out></td>
                    <td><c:out value="${encomenda.id_entregador}"></c:out></td>
                    <td><c:out value="${encomenda.situacao}"></c:out></td>
                    <td><c:out value="${encomenda.data_pedido}"></c:out></td>
                    <td><c:out value="${encomenda.data_entrega}"></c:out></td>
                    </tr>
            </c:forEach>
        </table>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js" integrity="sha384-uefMccjFJAIv6A+rW+L4AHf99KvxDjWSu1z9VI8SKNVmz4sk7buKt/6v9KI65qnm" crossorigin="anonymous"></script>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js" integrity="sha384-cs/chFZiN24E4KMATLdqdvsezGxaGsi4hLGOzlXwp5UZB1LY//20VyM2taTB4QvJ" crossorigin="anonymous"></script>
    </body>
</html>
