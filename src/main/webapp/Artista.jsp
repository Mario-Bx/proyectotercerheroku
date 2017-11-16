<%-- 
    Document   : Artista
    Created on : 15/11/2017, 10:32:06 AM
    Author     : LabingXEON
--%>
<%@page import="Dato.ArtistasCL"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="form-style-5">
                    <%
                        ArtistasCL newSquema = (ArtistasCL) request.getAttribute("frmAddSquema");
                        if (request.getParameter("action").equals("incertarAc")) {
                    %>
                    <form method="POST" action='ArtistaClontroller' name="frmAddUser">
                        Cliente ID : <input type="text" readonly="readonly" name="clienteIdHtml"/>
                        <br /> 
                        Nombre Cliente : <input type="text" name="nombreHtml"/>
                        <br />
                        <input type="submit" value="Insertar" />
                    </form>
                    <%
                    } else if ((request.getParameter("action").equals("edit"))) {
                        ArtistasCL Squemas = (ArtistasCL) request.getAttribute("Cliente");
                    %>
                    <form method="POST" action='ArtistaController' name="frmAddSquema">
                        Cliente ID : <input type="text" readonly="readonly" name="clienteIdHtml" value="<%=Squemas.getId()%>"/>
                        <br /> 
                        Nombre Cliente : <input type="text" name="NombreHtml" value="<%=Squemas.getNombre()%>"/>
                        <input type="submit" value="Editar" />
                    </form>
                    <%
                        }
                    %>
                </div>
    </body>
</html>
