<%-- 
    Document   : nueva_tarea
    Created on : 18 oct. de 2022, 08:03:25
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <h1>Registro de tareas</h1>
        <p>agrega nueva tarea</p>
        <form action="procesaServlet" method="post">
            <table>
                <tr>
                    <td>id</td>
                    <td><input type="text" name="id" /></td>
                </tr>
                <tr>
                    <td>Tarea</td>
                    <td><input type="text" name="tarea"/></td>
                </tr>
                 <tr>
                    <td></td>
                    <td><input type="submit" value="Agregar"/></td>
                </tr>
        
        </table>
        </form>
    </body>
</html>
