<%-- 
    Document   : encomendaMenu
    Created on : 24/04/2018, 01:09:52
    Author     : Ramon
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
        <title>Menu - Encomenda</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4" crossorigin="anonymous">
    </head>
    <body>
        <h1>Menu Encomenda</h1>
        <button onclick="window.location.href='encomendaAdicionar.jsp'">Adicionar encomenda</button>
        <form action="FrontController?action=LerEncomenda" method="post">
            <button>Consultar Encomendas </button>
        </form>
        <button onclick="window.location.href='encomendaApagar.jsp'">Apagar encomenda</button>
        <button onclick="window.location.href='encomendaEditar.jsp'">Editar encomenda</button>
        <button onclick="window.location.href='encomendaVisualizarEstado.jsp'">Estado Encomenda</button>
        
<!--        <form action="EncomendaController" method="post">
                <td><input type="submit" value="Estado Encomenda"></td>
            </form>-->
        
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js" integrity="sha384-uefMccjFJAIv6A+rW+L4AHf99KvxDjWSu1z9VI8SKNVmz4sk7buKt/6v9KI65qnm" crossorigin="anonymous"></script>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js" integrity="sha384-cs/chFZiN24E4KMATLdqdvsezGxaGsi4hLGOzlXwp5UZB1LY//20VyM2taTB4QvJ" crossorigin="anonymous"></script>
    </body>
</html>
