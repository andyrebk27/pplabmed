
package pplabmed.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.jdom2.Document;         // |
import org.jdom2.Element;          // |\ Librerías
import org.jdom2.JDOMException;    // |/ JDOM
import org.jdom2.input.SAXBuilder; // |
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;




@Controller
public class patologiaController{
 
    
@RequestMapping(value="cargarxml.htm")
public String cargarXml(Model m, HttpServletRequest request)
{
    //Se crea un SAXBuilder para poder parsear el archivo
    SAXBuilder builder = new SAXBuilder();
    File xmlFile = new File( "C:\\Users\\SinergiaPC\\Desktop\\xml_facturas\\459371.xml" );
    System.out.println("try");
   
    try
    {
        //Se crea el documento a traves del archivo
        Document document = (Document) builder.build( xmlFile );
         System.out.println("1");
        //Se obtiene la raiz 'tables'
        Element rootNode = document.getRootElement();
        
        System.out.println("2 "+rootNode.getAttributeValue("id") );
         System.out.println("2 "+rootNode.getChildTextTrim("num_factura"));
          String numfact = rootNode.getChildTextTrim("num_factura");
 
                //Se obtiene el valor que esta entre los tags '<tipo></tipo>'
                String numcedula = rootNode.getChildTextTrim("num_cedula");
                //Se obtiene el valor que esta entre los tags '<valor></valor>'
                String nomcliente = rootNode.getChildTextTrim("nombre_completo_cliente");
                String fechanac = rootNode.getChildTextTrim("fecha_nacimiento");
                String correo = rootNode.getChildTextTrim("correo");
                String sede = rootNode.getChildTextTrim("direccion_entrega_sede");
                String medico = rootNode.getChildTextTrim("medico");
                String status = rootNode.getChildTextTrim("status");
                String sexo = rootNode.getChildTextTrim("sexo");
                System.out.println( "\t"+nomcliente+"\t\t"+fechanac+"\t\t"+correo);
       
        List list2 = rootNode.getChildren( "examenes" );
        String nomexamen2 = rootNode.getChildTextTrim("nombre_examen");
        System.out.println("exa " +nomexamen2);
       
        for ( int i = 0; i < list2.size(); i++ )
        {
            System.out.println("lista " +list2.size());    
            Element campo = (Element)list2.get( i );
                String nomexamen = campo.getChildTextTrim("nombre_examen");
                System.out.println( "\t"+i+"  "+nomexamen+"\t\t");
        }
    }catch ( IOException io ) {
        System.out.println( io.getMessage() );
    }catch ( JDOMException jdomex ) {
        System.out.println( jdomex.getMessage() );
    }
      return "principal";
}
}