
<%@page import="java.util.Iterator"%>
<%@page import="Modelo.Persona"%>
<%@page import="java.util.List"%>
<%@page import="ModeloDAO.PersonaDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
         <title>JSP CRUD Usuarios</title>
    </head>
    <body>
        <div class="container">
            <h1>Usuarios</h1>
            <a class="btn btn-success" href="Controlador?accion=add">Agregar Nuevo</a>
            <br>
            <br>
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th class="text-center">NOMBRE</th>
                        <th class="text-center">APELLIDO</th>
                        <th class="text-center">EMAIL</th>
                        <th class="text-center">TELEFONO</th>
                        <th class="text-center">ACCIONES</th>
                    </tr>
                </thead>
                <%
                    PersonaDAO dao=new PersonaDAO();
                    List<Persona>list=dao.listar();
                    Iterator<Persona>iter=list.iterator();
                    Persona per=null;
                    while(iter.hasNext()){
                        per=iter.next();
                    
                %>
                <tbody>
                    <tr>
                        <td class="text-center"><%= per.getNombre()%></td>
                        <td class="text-center"><%= per.getApellido()%></td>
                        <td class="text-center"><%= per.getEmail()%></td>
                        <td class="text-center"><%= per.getTelefono()%></td>
                        <td class="text-center">
                            <a class="btn btn-warning" href="Controlador?accion=editar&id=<%= per.getId()%>">Editar</a>
                            <a class="btn btn-danger" href="Controlador?accion=eliminar&id=<%= per.getId()%>">Remove</a>
                        </td>
                    </tr>
                    <%}%>
                </tbody>
            </table>

        </div>
    </body>
</html>
