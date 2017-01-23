
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
        System.out.println("2");
        //Se obtiene la lista de hijos de la raiz 'tables'
        List list1 = rootNode.getChildren("Factura");
        System.out.println("3");
        //Se recorre la lista de hijos de 'tables'
        for ( int i = 0; i < list1.size(); i++ )
        {
            //Se obtiene el elemento 'tabla'
            Element factura = (Element) list1.get(i);
            System.out.println("4");
            //Se obtiene el atributo 'nombre' que esta en el tag 'tabla'
            String idfactura = factura.getAttributeValue("id");
            System.out.println("5");
            System.out.println( "Factura: " + idfactura );
 
             //Se obtiene la lista de hijos del tag 'tabla'
            List lista_campos = factura.getChildren();
 
                     //Se recorre la lista de campos
            for ( int j = 0; j < lista_campos.size( ); j++ )
            {
                //Se obtiene el elemento 'campo'
                Element campo = (Element)lista_campos.get( j );
         
                //Se obtienen los valores que estan entre los tags '<campo></campo>'
                //Se obtiene el valor que esta entre los tags '<nombre></nombre>'
                String numfact = campo.getChildTextTrim("num_factura");
 
                //Se obtiene el valor que esta entre los tags '<tipo></tipo>'
                String numcedula = campo.getChildTextTrim("num_cedula");
 
                //Se obtiene el valor que esta entre los tags '<valor></valor>'
                String nomcliente = campo.getChildTextTrim("nombre_completo_cliente");
                String fechanac = campo.getChildTextTrim("fecha_nacimiento");
                String correo = campo.getChildTextTrim("correo");
                String sede = campo.getChildTextTrim("direccion_entrega_sede");
                String medico = campo.getChildTextTrim("medico");
                String status = campo.getChildTextTrim("status");
                String sexo = campo.getChildTextTrim("sexo");
                System.out.println( "\t"+nomcliente+"\t\t"+fechanac+"\t\t"+correo);
            }
            
            
        }
        List list2 = rootNode.getChildren( "examenes" );
 
        //Se recorre la lista de hijos de 'tables'
        for ( int i = 0; i < list2.size(); i++ )
        {
            //Se obtiene el elemento 'tabla'
            Element examenes = (Element) list2.get(i);
          
            List lista_campos2 = examenes.getChildren();
 
                     //Se recorre la lista de campos
            for ( int j = 0; j < lista_campos2.size(); j++ )
            {
                //Se obtiene el elemento 'campo'
                Element campo = (Element)lista_campos2.get( j );
         
                 String nomexamen = campo.getChildTextTrim("nombre_examen");
 
                //Se obtiene el valor que esta entre los tags '<tipo></tipo>'
              
                System.out.println( "\t"+nomexamen+"\t\t");
            }
            
            
        }
            
    }catch ( IOException io ) {
        System.out.println( io.getMessage() );
    }catch ( JDOMException jdomex ) {
        System.out.println( jdomex.getMessage() );
    }
      return "principal";
}
}