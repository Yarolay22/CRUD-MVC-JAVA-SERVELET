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
                <h1>Agregar Persona</h1>
                <form action="Controlador">
                    <div class="mb-2">
                        <label class="form-label">Nombres:</label>
                        <input class="form-control" type="text" name="txtNombre" />
                    </div>
                    <div class="mb-2">
                        <label class="form-label">Apellidos:</label>
                        <input class="form-control" type="text" name="txtApellido" />
                    </div>
                    <div class="mb-2">
                        <label class="form-label">Email:</label>
                        <input class="form-control" type="text" name="txtEmail" />
                    </div>
                    <div class="mb-2">
                        <label class="form-label">Telefono:</label>
                        <input class="form-control" type="text" name="txtTelefono" />
                    </div>
                    
                    <input class="btn btn-primary" type="submit" name="accion" value="Agregar Nueva Persona">
                    <a href="Controlador?accion=listar">Regresar</a>
                </form>
            </div>

        </div>
    </body>
</html>
