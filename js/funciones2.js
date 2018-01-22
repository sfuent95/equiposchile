    function getParameterByName(name) {
        name = name.replace(/[\[]/, "\\[").replace(/[\]]/, "\\]");
        var regex = new RegExp("[\\?&]" + name + "=([^&#]*)"),
        results = regex.exec(location.search);
        return results === null ? "" : decodeURIComponent(results[1].replace(/\+/g, " "));
    }
    var id = getParameterByName('id');

    function verEquipoChile(action, ccid){
        var datay = {"ccId": id,
                     "Accion":"obtener"
                    };
                    console.log(datay);
        $.ajax({
            data: datay,
            type: "POST",
            dataType: "json",
            url: "controllers/controllerechile.php",
        })
        .done(function(data,textStatus,jqXHR ) {
            if ( console && console.log ) {
                console.log( " data success : "+ data.success
                    + " \n data msg : "+ data.message
                    + " \n textStatus : " + textStatus
                    + " \n jqXHR.status : " + jqXHR.status );
            }
            $("#titulo").text(data.datos.equi_nombre);
            $("#fundacion").html(data.datos.equi_fundacion);
            $("#img").attr("src",data.datos.equi_urlplantel);
            $("#res").html(data.datos.equi_res);

            fila ='<a href="palmares.html?id='+data.datos.equi_id+'"><i><b><font size="2">--->Palmares</font></b></i></a>';
              $("#palmares").append(fila);
        })
        .fail(function( jqXHR, textStatus, errorThrown ) {
            if ( console && console.log ) {
                console.log( " La solicitud ha fallado,  textStatus : " +  textStatus
                    + " \n errorThrown : "+ errorThrown
                    + " \n textStatus : " + textStatus
                    + " \n jqXHR.status : " + jqXHR.status );
            }
        });
    }
    verEquipoChile();

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
                                //$.each(data.datos[i], function(k, v) { console.log(k + ' : ' + v); });
                                console.log('id: '+data.datos[i].equi_id + ' nombre: '+data.datos[i].equi_nombre);
                                fila ='<li><a href="resena.html?id='+data.datos[i].equi_id+'"> '+data.datos[i].equi_nombre+'</a></li>';
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
