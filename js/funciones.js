$(document).ready(function(){

    //funcion para listar los cecostos
    var getlista = function (){
        var datax = {
            "Accion":"listar"
        }
        $.ajax({
            data: datax,
            type: "GET",
            dataType: "json",
            url: "controllers/controllerechile.php",
        })
        .done(function( data, textStatus, jqXHR ) {
            $("#listado").html("");
            if ( console && console.log ) {
                console.log( " data success : "+ data.success
                    + " \n data msg : "+ data.message
                    + " \n textStatus : " + textStatus
                    + " \n jqXHR.status : " + jqXHR.status );
            }
            for(var i=0; i<data.datos.length;i++){
                            console.log('id: '+data.datos[i].equi_id + ' nombre: '+data.datos[i].equi_nombre);
                            fila ='<a href="resena.html?id='+data.datos[i].equi_id+'"><div class="row"><div class="col-xs-4"><img src="img/insignias/'+data.datos[i].equi_urlinsignia+'"></div>';
                            fila +='<div class="col-xs-8">';
                            fila +='<div class="row"><div class="col-xs-12"><font size="5">'+data.datos[i].equi_nombre+'</font></div></div>';
                            fila +='<div class="row"><div class="col-xs-12"><font size="4">Ciudad: <b>'+data.datos[i].equi_ciudad+'</b></font></div></div>';
                            //fila +='<div class="row"><div class="col-xs-12"><font size="2">Bajada</font></div></div>';
                            fila +='<div class="row"><div class="col-xs-12"><font size="3">Apodo: <b>'+data.datos[i].equi_apodo+'</b></font></div></div>';
                            fila +='</div></div></a><br>';
                            $("#listado").append(fila);
            }
        })
        .fail(function( jqXHR, textStatus, errorThrown ) {
            if ( console && console.log ) {
                console.log( " La solicitud getlista ha fallado,  textStatus : " +  textStatus
                    + " \n errorThrown : "+ errorThrown
                    + " \n textStatus : " + textStatus
                    + " \n jqXHR.status : " + jqXHR.status );

            }
        });
    }
    getlista();
});
