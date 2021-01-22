<%-- 
    Document   : muestradatos
    Created on : 22-ene-2021, 21:35:13
    Author     : Juanjo Cortés
--%>

<%@page import="java.text.DecimalFormat"%>
<%@page import="modelo.Billete"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% Billete billete = (Billete) request.getAttribute("billete");
            DecimalFormat df = new DecimalFormat("#.00");
           String importe = df.format(billete.getImporte());
        %>
        <h2>Importe de los billetes: <%=importe%></h2>
        <h2>Numero de billetes: ${billete.getCantidad()}</h2>
        <h2>Fecha: ${billete.getFechaVuelo()}</h2>
    </body>
</html>
