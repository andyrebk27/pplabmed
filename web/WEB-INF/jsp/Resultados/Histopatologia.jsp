<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<div class="col-md-2"></div>
<div id="pagina" style="/* background-color: black; */">
    <div class="bs-component">
        <div class="panel panel-default" style="box-shadow:0 5px 15px rgba(0, 0, 0, 0.5);">  
            <button type="button" class="btn btn-primary close" onclick="cargarContenido('vacio.htm', 'contenido');" >&times; </button>
            <div class="panel-heading"><h4>Agregar Histopatología</h4></div>
            <div class="panel-body">
                <form id="HistopatologiaForm" class="form-horizontal" method="POST" role="form">
                    <fieldset>
                        <input type="hidden" id="code" value="${codigo}">
                        <div class="row">
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label for="Nofactura" class="col-md-4 control-label">No.Factura</label>
                                    <div class="col-md-3" style="padding-left: 2px; padding-right: 2px;">
                                        <input type="text" class="form-control" id="Nofactura" name="Nofactura" placeholder="" >
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="Paciente" class="col-md-2 control-label">Paciente:</label>
                                    <div class="col-md-9" style="padding-left: 2px; padding-right: 2px;">
                                        <input type="text" class="form-control" id="Paciente" name="Paciente" placeholder="" >
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label for="Edad" class="col-md-3 control-label">Edad:</label>
                                    <div class="col-md-2" style="padding-left: 2px; padding-right: 2px;">
                                        <input type="text" class="form-control" id="Edad" name="Edad" placeholder="" >
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label for="Corr" class="col-md-3 control-label">Corr:</label>
                                    <div class="col-md-8" style="padding-left: 2px; padding-right: 2px;">
                                        <input type="text" class="form-control" id="Corr" name="Orden1" placeholder="" >
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="Direccion" class="col-md-2 control-label">Dirección:</label>
                                    <div class="col-md-9" style="padding-left: 2px; padding-right: 2px;">
                                        <input type="text" class="form-control" id="Direccion" name="Direccion" placeholder="" >
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label for="Sexo" class="col-md-3 control-label">Sexo:</label>
                                    <div class="col-md-2" style="padding-left: 2px; padding-right: 2px;">
                                        <input type="text" class="form-control" id="Sexo" name="Sexo" placeholder="" >
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-3">
                            </div>               
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="Medico" class="col-md-2 control-label">Médico:</label>
                                    <div class="col-md-9" style="padding-left: 2px; padding-right: 2px;">
                                        <input type="text" class="form-control" id="Medico" name="Medico" placeholder="" >
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3">
                            </div>
                        </div>
                        <!-------------Campos HANSA --------------->
                        <div class="row">  
                            <hr style="border: 1px solid #C6C8CA;"/>
                            <div class="col-md-9">
                                <div class="form-group">
                                    <label for="DiagnosticoClinico" class="col-md-2 control-label">Diagnóstico Clínico:</label>
                                    <div class="col-md-9" style="padding-left: 2px; padding-right: 2px;">
                                        <input type="text" class="form-control" id="DiagnosticoClinico" name="DiagnosticoClinico" placeholder="" >
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label for="Mor1" class="col-md-3 control-label">MOR1:</label>
                                    <div class="col-md-6" style="padding-left: 2px; padding-right: 2px;">
                                        <input type="text" class="form-control" id="Mor1" name="Mor1" placeholder="" >
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-9">
                                <div class="form-group">
                                    <label for="Muestra" class="col-md-2 control-label">Muestra:</label>
                                    <div class="col-md-9" style="padding-left: 2px; padding-right: 2px;">
                                        <input type="text" class="form-control" id="Muestra" name="Muestra" placeholder="" >
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label for="Mor2" class="col-md-3 control-label">MOR2:</label>
                                    <div class="col-md-6" style="padding-left: 2px; padding-right: 2px;">
                                        <input type="text" class="form-control" id="Mor2" name="Mor2" placeholder="" >
                                    </div>
                                </div>
                            </div>
                        </div>
                       
                        <div class="row">
                                <div class="col-md-4">
                                     <div class="form-group">
                                    <label for="Finforme" class="col-md-7 control-label">Fecha Informe:</label>
                                    <div class="col-md-5" style="padding-left: 2px; padding-right: 2px;">
                                        <input type="date" class="form-control" id="Finforme" name="Finforme" placeholder="" >
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                     <div class="form-group">
                                    <label for="Firma1" class="col-md-3 control-label">Firma 1:</label>
                                    <div class="col-md-9" style="padding-left: 2px; padding-right: 2px;">
                                        <!-- <input type="search" class="form-control" id="Firma1" name="Firma1" placeholder="" > -->
                                        <select id="Firma1" name="Firma1" class="form-control"><option value="0">Seleccionar</option>
                                            <c:forEach items="${ListaFirmas}" var="Firmasmedicos">
                                                <option value="${Firmasmedicos.getIdtblfirmamed()}">${Firmasmedicos.getNombre()}</option>
                                            </c:forEach> 
                                        </select>
                                    </div>                      
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label for="TOPOG" class="col-md-3 control-label">TOPOG :</label>
                                    <div class="col-md-6" style="padding-left: 2px; padding-right: 2px;">
                                        <input type="text" class="form-control" id="TOPOG" name="TOPOG" placeholder="" >
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label for="FBiopsia" class="col-md-7 control-label">Fecha Biopsia:</label>
                                    <div class="col-md-5" style="padding-left: 2px; padding-right: 2px;">
                                        <input type="date" class="form-control" id="FBiopsia" name="FBiopsia" placeholder="" >
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label for="Firma2" class="col-md-3 control-label">Firma 2:</label>
                                    <div class="col-md-9" style="padding-left: 2px; padding-right: 2px;">
                                        <select id="Firma2" name="Firma2" class="form-control"><option value="0">Seleccionar</option>
                                            <c:forEach items="${ListaFirmas}" var="Firmasmedicos">
                                                <option value="${Firmasmedicos.getIdtblfirmamed()}">${Firmasmedicos.getNombre()}</option>
                                            </c:forEach> 
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label for="FMuestra" class="col-md-3 control-label">Fecha Muestra:</label>
                                    <div class="col-md-5" style="padding-left: 2px; padding-right: 2px;">
                                        <input type="date" class="form-control" id="FMuestra" name="FMuestra" placeholder="" >
                                    </div>
                                </div>
                            </div>
                        </div>  
                        <div class="row">    
                            <div class="col-md-10">
                                <div class="form-group">
                                    <label for="DescMacro" class="col-md-3 control-label">Descripción Macroscopica:</label>
                                    <div class="col-md-9" style="padding-left: 2px; padding-right: 2px;">
                                        <textarea class="form-control" id="DescMacro" name="DescMacro" rows="5"></textarea>
                                    </div>
                                </div>
                            </div>                
                        </div>
                        <div class="row">
                            <div class="col-md-10">
                                <div class="form-group">
                                    <label for="DescMicro" class="col-md-3 control-label">Descripción Microscopica:</label>
                                    <div class="col-md-9" style="padding-left: 2px; padding-right: 2px;">
                                        <textarea class="form-control" id="DescMicro" name="DescMicro" rows="5"></textarea>
                                    </div>
                                </div>
                            </div>                
                        </div>
                        <div class="row">
                            <div class="col-md-10">
                                <div class="form-group">
                                    <label for="Diagnostico:" class="col-md-3 control-label">Diagnóstico:</label>
                                    <div class="col-md-9" style="padding-left: 2px; padding-right: 2px;">
                                        <textarea class="form-control" id="Diagnostico" name="Diagnostico:" rows="5"></textarea>
                                    </div>
                                </div>
                            </div>                
                        </div>
                        <hr style="border: 1px solid #C6C8CA;"/>
                        <div id="myCarousel" class="carousel slide" data-ride="carousel">
                            <!-- Indicators -->
                            <ol class="carousel-indicators">
                                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                                <li data-target="#myCarousel" data-slide-to="1"></li>
                                <li data-target="#myCarousel" data-slide-to="2"></li>
                                <li data-target="#myCarousel" data-slide-to="3"></li>
                            </ol>
                            <!-- Wrapper for slides -->
                            <div class="carousel-inner" role="listbox">
                                <div class="item active">
                                    <img src="Resources/image/Logo.jpg" alt=""/>
                                </div>
                                <div class="item">
                                    <img src="Resources/image/Logo.jpg" alt=""/>
                                </div>
                            </div>
                            <!-- Left and right controls -->
                            <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
                                <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                                <span class="sr-only">Previous</span>
                            </a>
                            <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
                                <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                                <span class="sr-only">Next</span>
                            </a>
                        </div>
                        <br>
                        <br>      
                    </fieldset>
                    <div class="row">
                        <div class="col-md-2"></div>
                        <div class="col-md-8">
                            <div id="permisosAsignados"></div>
                        </div>
                        <div class="col-md-2"></div>
                    </div>
                </form>  
            </div>          
            <div class="panel-footer">
                <div  class="col-md-10"></div>
                <button  id="btn-salir" type="button" class="btn btn-default" data-dismiss="modal" onclick="cargarContenido('vacio.htm', 'contenido');">Salir</button>
                <button id="btn-guardar" type="button" class="btn btn-primary" onclick="guardarHistopatologia();">Guardar</button>
                <br>    
            </div>
        </div>               
    </div>
    <div id="creaNuevo" class="col-md-1"></div>  
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