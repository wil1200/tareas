package com.emergentes;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "procesaServlet", urlPatterns = {"/procesaServlet"})
public class procesaServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int pos = -1;
        int buscado = -1;
        int id = Integer.parseInt(request.getParameter("id"));
        HttpSession ses = request.getSession();

        ArrayList<Sesion> lista = (ArrayList<Sesion>) ses.getAttribute("lista");

        for (Sesion s : lista) {
            pos++;
            if (s.getId() == id) {
                buscado = pos;
            }

        }
        lista.remove(buscado);
        response.sendRedirect("index.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String desc = request.getParameter("tarea");
        int id = Integer.parseInt(request.getParameter("id"));
        Sesion tarea = new Sesion();
        
        tarea.setId(id);
        tarea.setTarea(desc);

        HttpSession ses = request.getSession();

        ArrayList<Sesion> lista = (ArrayList<Sesion>) ses.getAttribute("lista");
        lista.add(tarea);

        response.sendRedirect("index.jsp");

    }
}
