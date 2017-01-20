<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
 <div class="col-md-3"></div>
 <div class="col-md-6" style="/* background-color: black; */">
    <link href="Resources/css/radiostyle.css" rel="stylesheet" type="text/css"/>
        <div class="well bs-component">
            <form class="form-horizontal">
                <fieldset>
                    <legend>Agregar Id Citologías<div class="row" style="border-top: 1px dotted #c5daea;display: block;margin: 10px 0;"></div></legend>
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
                    <div class="form-group">
                         <div class="col-md-10 col-lg-offset-2">
                            <a id="btn-salir" type="reset" href="#" onclick="cargarContenido('vacio.htm', 'contenido');" class="btn btn-default">Salir</a>
                            <a id="btn-guardar" type="submit" href="#" class="btn btn-primary" onclick="guardarCatCitologia();">Guardar</a>                  
                        </div>
                    </div>
                </fieldset>
            </form>  
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
                
          