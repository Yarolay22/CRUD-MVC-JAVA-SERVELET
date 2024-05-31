
package ModeloDAO;

import Config.Conexion;
import Intefaces.CRUD;
import Modelo.Persona;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class PersonaDAO implements CRUD{
    Conexion cn=new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    Persona persona = new Persona();
    
    @Override
    public List listar() {
        ArrayList<Persona> personas = new ArrayList<>();
        String sql="select * from usuarios";
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
                Persona persona = new Persona();
                persona.setId(rs.getInt("Id"));
                persona.setNombre(rs.getString("Nombre"));
                persona.setApellido(rs.getString("Apellido"));
                persona.setEmail(rs.getString("Email"));
                persona.setTelefono(rs.getString("Telefono"));
                personas.add(persona);
            }
        } catch (Exception e) {
            System.out.println("ERROR => " + e.getMessage());
        }
        return personas;
    }

    @Override
    public Persona list(int id) {
        String sql="select * from usuarios where Id="+id;
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){                
                persona.setId(rs.getInt("Id"));
                persona.setNombre(rs.getString("Nombre"));
                persona.setApellido(rs.getString("Apellido"));
                persona.setEmail(rs.getString("Email"));
                persona.setTelefono(rs.getString("Telefono"));
            }
        } catch (Exception e) {
            System.out.println("ERROR => " + e.getMessage());
        }
        return persona;
    }

    @Override
    public boolean add(Persona persona) {
       String sql="insert into usuarios (Nombre, Apellido, Email, Telefono)values('"+persona.getNombre()+"','"+persona.getApellido()+"','"+persona.getEmail()+"','"+persona.getTelefono()+"')";
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
            System.out.println("ERROR => " + e.getMessage());
        }
       return false;
    }

    @Override
    public boolean edit(Persona per) {
        String sql="update usuarios set Nombre='"+per.getNombre()+"',Apellido='"+per.getApellido()+"',Email='"+per.getEmail()+"',Telefono='"+per.getTelefono()+"'where Id="+per.getId();
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
            System.out.println("ERROR => " + e.getMessage());
        }
        return false;
    }

    @Override
    public boolean eliminar(int id) {
        String sql="delete from usuarios where Id="+id;
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
            System.out.println("ERROR => " + e.getMessage());
        }
        return false;
    }
    
}
