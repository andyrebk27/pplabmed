<%@page import="java.util.List" %>
<%@page import="org.jdom.Document"%>
<%@page import="org.jdom.Element"%>
<%@page import="org.jdom.input.SAXBuilder" %>
 
<%
    /*SAXBuilder se encarga de cargar el archivo XML del disco o de un String */
    SAXBuilder builder=new SAXBuilder();
    /*direccion del archivo XML*/
    String xml_path="C:/Archivos de programa/Apache Software Foundation/Apache Tomcat 6.0.24(stand)/webapps/ejercicio14/departamentos.xml";
    /*Cargamos el documento*/
    Document bd_xml=builder.build(xml_path);
    /*Sacamos el elemento raiz*/
    Element raiz=bd_xml.getRootElement();
 
    /*Guardamos la direccion al archivo, el archivo, y la lista de nodos departamento */
    session.setAttribute("xml_path",xml_path);
    session.setAttribute("bd_xml",bd_xml);
    session.setAttribute("lista_departamento",raiz.getChildren("departamento"));
 
    /*traemos el nombre de la copia*/
    String copia=(String)session.getAttribute("copia");
%>
<html>
<head>
<title>JDOM</title>
<style>
*{
    background-color:#CC0000;
    color:#FFFFFF;
}
</style>
</head>
<body>
 
<table width="100%" border="0" cellspacing="0" cellpadding="5">
    <tr>
        <td valign="top">
            <jsp:include page="registro_departamento.jsp"/>
            <br>
            <jsp:include page="copia_bd_xml.jsp"/>
            <br>
            <!--si la copia es diferente de null mostramos el enlace -->
            <%if(copia!=null){%>
                <a href="<%=copia%>"> Descarga Copia de la BD</a>
            <%}%>
        </td>
        <td>
            <div style="height:650px; overflow:scroll;">
                <jsp:include page="listar_departamento.jsp"/>
            </div>
        </td>
    </tr>
    <tr>
        <td align="center" valign="top" colspan="2">
 
        </td>
    </tr>
</table>
 
    </body>
</html>