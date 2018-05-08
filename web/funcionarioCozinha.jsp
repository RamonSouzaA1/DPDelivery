<%-- 
    Document   : manterCinema
    Created on : 27/10/2016, 23:31:23
    Author     : Pedro Junio
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Funcionario Cozinha</title>
        <link rel="stylesheet" type="text/css" href="css/style.css">
        <script type="text/javascript" src="js/script.js"></script>
    </head>

    <body>
       
        <h1>Verificar as funções de cada Funcionário da Cozinha</h1>
        <table>

            <form action="FrontController?action=LerFuncionarioCozinha" method="post">
                <table>
                    <tr><td><input value="Verificar" type="submit"/></td></tr>
                </table>
            </form>


        </table>
    </body>
</html>
