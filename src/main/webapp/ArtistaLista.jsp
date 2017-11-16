<%-- 
    Document   : ArtistaLista
    Created on : 15/11/2017, 10:26:25 AM
    Author     : LabingXEON
--%>

<%@page import="Dato.ArtistasCL"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="form-style-5">
                    <a href="ArtistaController?action=incertarAc"><input type="submit" value="Add Artista"/></a>
                    <table border=1>
                        <thead>
                            <tr>
                                <th>Artista Id</th>
                                <th>Nombre</th>
                                <th colspan=2>Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <%
                                List<ArtistasCL> newArtista = (List<ArtistasCL>) request.getAttribute("ArtistasJSP");
                                if (newArtista != null) {
                                    for (ArtistasCL artista : newArtista) {
                            %>
                            <tr>
                                <td><%=artista.getId()%></td>
                                <td><%=artista.getNombre()%></td>
                                <td><a href="ArtistaController?action=edit&ClienteID=<%=artista.getId() %>">Aatualizar</a></td>
                                <td><a href="ArtistaController?action=delete&ClienteID=<%=artista.getId() %>">Eliminar</a></td>
                            </tr>

                            <%
                                    }

                                }

                            %>

                        </tbody>
                    </table>

                </div>
    </body>
</html>
