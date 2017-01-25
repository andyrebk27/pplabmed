<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<!DOCTYPE html>
<div class="row">
    <div class="col-md-1"></div>
    <div class="col-md-10" id="pagina">
        <legend>Lista Usuarios</legend>    
        <div class="col-md-1"></div>
        <div class="row" style="font-family:Helvetica">
            <div class="col-md-10">
                <div class="form-group">
                    <c:if test="${!empty listaUsuario}">
                        <table  id="TablapermisosUsuarios" class="table table-striped table-bordered"  cellspacing="0" width="100%">
                            <thead>
                                <tr style="background: #485563">
                                    <th>Nombre</th>
                                    <th>Correo</th>
                                    <th>Acceso Web</th>
                                    <th>Acceso Movil</th>
                                    <th>Estado</th>                                  
                                    <th>Editar</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach items="${listaUsuario}" var="Usuario">
                                    <tr  scope="row">
                                        <td><c:out value="${Usuario.getNombre()}" /></td>
                                        <td><c:out value="${Usuario.getCorreo()}" /></td>
                                        <c:if test="${Usuario.isAccesomovil()}">
                                            <td align="center"><img src="Resources/image/check.png" alt="" height="20" width="20"/></td>
                                            </c:if>
                                            <c:if test="${!Usuario.isAccesomovil()}">
                                            <td align="center"><img src="Resources/image/error.png" alt="" height="20" width="20"/></td>
                                            </c:if>
                                            <c:if test="${Usuario.isAccesoweb()}">
                                            <td align="center"><img src="Resources/image/check.png" alt="" height="20" width="20"/></td>
                                            </c:if>
                                            <c:if test="${!Usuario.isAccesoweb()}">
                                            <td align="center"><img src="Resources/image/error.png" alt="" height="20" width="20"/></td>                                            
                                            </c:if>
                                            <c:if test="${Usuario.isEstado()}">
                                            <td align="center"><img src="Resources/image/desactivar.png" alt="" width="40" onclick="estUserEdit('${Usuario.getIdtblusuarios()}', '${Usuario.isEstado()}');" style="cursor:pointer;"/></td>
                                            </c:if>
                                            <c:if test="${!Usuario.isEstado()}">
                                            <td align="center"><img src="Resources/image/activar.png" alt="" width="40" onclick="estUserEdit('${Usuario.getIdtblusuarios()}', '${Usuario.isEstado()}');" style="cursor:pointer;"/></td>
                                            </c:if>
                                        <td align="center"><img src="Resources/image/Ver.png" style="cursor:pointer;" onclick="cargaInfoUsuarios(${Usuario.getIdtblusuarios()})" alt="" height="30" width="30"/></td>                      
                                    </tr>
                                </c:forEach>    
                            </tbody>
                        </table>
                    </c:if>
                    <input type="hidden" id="tempId">
                </div>
            </div>                                    
        </div>
        <br/>
        <br/>
        <br/>
        <br/>     
    </div>
    <div class="col-md-1"></div>
</div>
<div class="modal fade" id="editausr" role="dialog"  data-backdrop="static" aria-hidden="true" data-toggle="modal">
    <div class="modal-dialog modal-lg" >
        <div class="modal-content" style="height:650px; overflow-y: auto; resize:vertical;" >
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title" style="font-weight:bold;">Actualizar Usuario</h4>
        </div>
          <div class="modal-body"  style="overflow-y: auto;" >
              <div id="cargaPreviaUser"></div>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-primary" onclick="updateUsuario();">Actualizar Usuario</button>  
          <button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
        </div>
      </div>
    </div>
    </div>  
<div id="tempId">  
</div>
<div class="modal modal-static fade" data-keyboard="false" data-backdrop="static" id="processing-modal" role="dialog" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-body">
                <div class="text-center">
                    <img src="Resources/image/cargando2.gif" class="icon" alt=""/>
                </div>
            </div>
        </div>
    </div>
</div>
