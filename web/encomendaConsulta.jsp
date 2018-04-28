<%-- 
    Document   : encomendaConsulta
    Created on : 04/04/2018, 22:54:50
    Author     : Ramon
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
        <title>JSP Page</title>
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
</body>
</html>
