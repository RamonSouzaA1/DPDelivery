<%-- 
    Document   : clienteConsulta
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
    <h1>Consulta Veículo</h1>
    <table>
      <tr>
          <td>id</td>
          <td>placa</td>
          <td>marca</td>
          <td>modelo</td>
          <td>situacao</td>
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
