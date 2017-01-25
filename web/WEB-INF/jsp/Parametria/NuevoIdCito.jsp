<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<div class="col-md-3"></div>
<div class="col-md-6" style="/* background-color: black; */">
    <link href="Resources/css/radiostyle.css" rel="stylesheet" type="text/css"/>
    <div class="bs-component">
        <div class="panel panel-default" style="box-shadow:0 5px 15px rgba(0, 0, 0, 0.5);">
            <button type="button" class="btn btn-primary close" onclick="cargarContenido('vacio.htm', 'contenido');" >&times; </button>
            <div class="panel-heading"><h4>Agregar Id Citologías</h4></div>
            <div class="panel-body">
                <form class="form-horizontal">
                    <fieldset>
                        <br>
                        <div class="form-group">
                            <label for="NombreCatCitologia" class="col-md-2 control-label">Identificador:</label>
                            <div class="col-md-9" style="padding-left: 2px; padding-right: 2px;">
                                <input type="text" class="form-control" id="NombreCatCitologia" name="NombreCatCitologia" placeholder="Identificador" >
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="Estado" class="col-md-2 control-label">Estado:</label>
                            <div class="col-md-3">
                                <div class="switch">
                                    <input type="checkbox"  id="Estado" name="toggle" checked>
                                    <label for="toggle"><i></i></label>
                                    <span></span>
                                </div>
                            </div>
                        </div>
                    </fieldset>
                </form> 
                <br>
            </div>
            <div class="panel-footer">
                <div  class="col-md-8"></div>
                <button  id="btn-salir" type="button" class="btn btn-default" data-dismiss="modal" onclick="cargarContenido('vacio.htm', 'contenido');">Salir</button>
                <button id="btn-guardar" type="button" class="btn btn-primary" onclick="guardarCatCitologia();">Guardar</button>
                <br>    
            </div> 
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

