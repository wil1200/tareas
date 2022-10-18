<%@page import="com.emergentes.Sesion"%>
<%@page import="java.util.ArrayList"%>
<%
    if (session.getAttribute("lista") == null) {
        ArrayList<Sesion> lisaux = new ArrayList<Sesion>();
        session.setAttribute("lista", lisaux);
    }
    ArrayList<Sesion> tarea = (ArrayList<Sesion>) session.getAttribute("lista");

%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Tareas pendientes</h1>
        <a href="nueva_tarea.jsp">nuevo</a>
        <table border="1">
            <tr>
                <td>id</td>
                <td>Tarea</td>
                <td>completado</td>
                <td></td>
            </tr>
            <%                   if (tarea != null) {

                    for (Sesion ses : tarea) {

            %>
            <tr>
                <td>
                    <%=ses.getId()%>
                </td>
                <td>
                    <%=ses.getTarea()%>
                </td>
                <td>

                    <input type="checkbox" name ="tarea" value=1/>
                </td>
                <td>
                    <a href="procesaServlet?id=<%= ses.getId()%>">borrar</a>
                </td>
            </tr>
            <%

                    }
                }
            %>
        </table>
    </body>
</html>
