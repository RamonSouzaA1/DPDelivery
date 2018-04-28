<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
        <title>Consulta Veículo</title>
    </head>
    <body>
    <h1>Consulta Veículo</h1>
    <table>
      <tr>
          <td>Id</td>
          <td>Placa</td>
          <td>Marca</td>
          <td>Modelo</td>
          <td>Situacao</td>
      </tr>
      <c:forEach items="${veiculos}" var="veiculo">
        <tr>
          <td><c:out value="${veiculo.id}"></c:out></td>
          <td><c:out value="${veiculo.placa}"></c:out></td>
          <td><c:out value="${veiculo.marca}"></c:out></td>
          <td><c:out value="${veiculo.modelo}"></c:out></td>
          <td><c:out value="${veiculo.situacao}"></c:out></td>
        </tr>
      </c:forEach>
    </table>
</body>
</html>
