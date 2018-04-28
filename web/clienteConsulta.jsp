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
    <h1>Consulta Cliente</h1>
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
</body>
</html>
