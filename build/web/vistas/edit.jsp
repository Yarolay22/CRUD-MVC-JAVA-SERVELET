
<%@page import="Modelo.Persona"%>
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
            <div class="col-lg-6">
            <%
                    PersonaDAO dao=new PersonaDAO();
                    int id=Integer.parseInt((String)request.getAttribute("idper"));
                    Persona p=(Persona)dao.list(id);
            %>
            <h1>Modificar Persona</h1>

             <form action="Controlador">
                    <input type="hidden" name="txtid" value="<%= p.getId()%>">
                    <div class="mb-2">
                        <label class="form-label">Nombres:</label>
                        <input class="form-control" type="text" name="txtNombre" value="<%= p.getNombre()%>" />
                    </div>
                    <div class="mb-2">
                        <label class="form-label">Apellidos:</label>
                        <input class="form-control" type="text" name="txtApellido" value="<%= p.getApellido()%>" />
                    </div>
                    <div class="mb-2">
                        <label class="form-label">Email:</label>
                        <input class="form-control" type="text" name="txtEmail" value="<%= p.getEmail()%>" />
                    </div>
                    <div class="mb-2">
                        <label class="form-label">Telefono:</label>
                        <input class="form-control" type="text" name="txtTelefono" value="<%= p.getTelefono()%>" />
                    </div>
                    
                    <input class="btn btn-primary" type="submit" name="accion" value="Guardar los Cambios">
                    <a href="Controlador?accion=listar">Regresar</a>
                </form>

          </div>
          
        </div>
    </body>
</html>
