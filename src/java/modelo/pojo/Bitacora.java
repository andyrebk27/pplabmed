package modelo.pojo;
// Generated 1/02/2017 08:05:29 AM by Hibernate Tools 4.3.1


import java.util.Date;

/**
 * Bitacora generated by hbm2java
 */
public class Bitacora  implements java.io.Serializable {


     private int idtblbitacora;
     private int idtblcattipobitacora;
     private String descripcion;
     private int idtblusuarios;
     private Date fecha;
     private String url;
     private String tabla;
     private int idtabla;

    public Bitacora() {
    }

    public Bitacora(int idtblbitacora, int idtblcattipobitacora, String descripcion, int idtblusuarios, Date fecha, String url, String tabla, int idtabla) {
       this.idtblbitacora = idtblbitacora;
       this.idtblcattipobitacora = idtblcattipobitacora;
       this.descripcion = descripcion;
       this.idtblusuarios = idtblusuarios;
       this.fecha = fecha;
       this.url = url;
       this.tabla = tabla;
       this.idtabla = idtabla;
    }
   
    public int getIdtblbitacora() {
        return this.idtblbitacora;
    }
    
    public void setIdtblbitacora(int idtblbitacora) {
        this.idtblbitacora = idtblbitacora;
    }
    public int getIdtblcattipobitacora() {
        return this.idtblcattipobitacora;
    }
    
    public void setIdtblcattipobitacora(int idtblcattipobitacora) {
        this.idtblcattipobitacora = idtblcattipobitacora;
    }
    public String getDescripcion() {
        return this.descripcion;
    }
    
    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }
    public int getIdtblusuarios() {
        return this.idtblusuarios;
    }
    
    public void setIdtblusuarios(int idtblusuarios) {
        this.idtblusuarios = idtblusuarios;
    }
    public Date getFecha() {
        return this.fecha;
    }
    
    public void setFecha(Date fecha) {
        this.fecha = fecha;
    }
    public String getUrl() {
        return this.url;
    }
    
    public void setUrl(String url) {
        this.url = url;
    }
    public String getTabla() {
        return this.tabla;
    }
    
    public void setTabla(String tabla) {
        this.tabla = tabla;
    }
    public int getIdtabla() {
        return this.idtabla;
    }
    
    public void setIdtabla(int idtabla) {
        this.idtabla = idtabla;
    }




}


