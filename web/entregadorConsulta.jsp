<%-- 
    Document   : entregadorConsulta
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
</body>
</html>
