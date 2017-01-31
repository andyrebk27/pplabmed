package pplabmed.controller;

import java.io.File;
import java.io.IOException;
import java.security.KeyStore.Entry.Attribute;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.jdom2.Document;
import org.jdom2.Element;
import org.jdom2.JDOMException;
import org.jdom2.input.SAXBuilder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import java.io.InputStream;
import java.io.OutputStream;
import com.jcraft.jsch.*;
import java.awt.*;
import java.util.ArrayList;
import java.util.Properties;
import javax.swing.*;



@Controller
public class patologiaController {

    @RequestMapping(value = "cargarxml.htm")
    public String cargarXml(Model m, HttpServletRequest request) {

        String sDirectorio = "C:\\Users\\SinergiaPC\\Desktop\\xml_facturas\\ficheros Nuevos\\";
        File f = new File(sDirectorio);
        if (f.exists()) {
            File[] ficheros = f.listFiles();
            for (int x = 0; x < ficheros.length; x++) {
                System.out.println(ficheros[x].getName());
               
                SAXBuilder builder = new SAXBuilder();
                File xmlFile = new File("C:\\Users\\SinergiaPC\\Desktop\\xml_facturas\\ficheros Nuevos\\"+ficheros[x].getName());
                                          
                
                try {
                    Document document = (Document) builder.build(xmlFile);
                    Element rootNode = document.getRootElement();
                    String numfact = rootNode.getChildTextTrim("num_factura");
                    String numcedula = rootNode.getChildTextTrim("num_cedula");
                    String nomcliente = rootNode.getChildTextTrim("nombre_completo_cliente");
                    String fechanac = rootNode.getChildTextTrim("fecha_nacimiento");
                    String correo = rootNode.getChildTextTrim("correo");
                    String sede = rootNode.getChildTextTrim("direccion_entrega_sede");
                    String medico = rootNode.getChildTextTrim("medico");
                    String status = rootNode.getChildTextTrim("status");
                    String sexo = rootNode.getChildTextTrim("sexo");
                    System.out.println("\t Nombre " + nomcliente);
                    System.out.println("\t fecha "+ fechanac);
                    System.out.println("\t correo "+ correo);
                    System.out.println("\t Medico " + medico);
                    System.out.println("\t Estatus " + status);
                    System.out.println("\t Sexo " + sexo);
                    //Element roodNode = document.getRootElement();
                    //List list2 = rootNode.getChildren("examenes");
                    Element apiName = rootNode.getChild("examenes");
                    List list2 = apiName.getChildren("nombre_examen");
                    System.out.println("\t tamaño lista " + list2.size());
                    List<Element> typeContent = rootNode.getChildren("examenes");
                    for (int i = 0; i < typeContent.size(); i++) {
                        //List<Element> list = typeContent.getChildren("nombre_examen");
                        if (typeContent.size() > 0) {
                            Element element = typeContent.get(i);
                            List paramChilds = element.getChildren("nombre_examen");
                            for (int j = 0; j < paramChilds.size(); j++) {
                                Element node = (Element) paramChilds.get(j);
                                System.out.println("\t Examenes:"+node.getText());
                                
                            }
                        }
                    }
                } catch (IOException io) {
                    System.out.println(io.getMessage());
                } catch (JDOMException jdomex) {
                    System.out.println(jdomex.getMessage());
                }
            }

        }
   
        return "principal";
    }
}


