
var Frut = {
        validaRut : function (rutCompleto) {
            rutCompleto = rutCompleto.replace("‐","-");
            if (!/^[0-9]+[-|‐]{1}[0-9kK]{1}$/.test( rutCompleto ))
            return false;
            var tmp   = rutCompleto.split('-');
            var digv  = tmp[1]; 
            var rut   = tmp[0];
            if ( digv == 'K' ) digv = 'k' ;
            return (Frut.dv(rut) == digv );
        },
        dv : function(T){
            var M=0,S=1;
            for(;T;T=Math.floor(T/10))
            S=(S+T%10*(9-M++%6))%11;
            return S?S-1:'k';
        }
      }
	$("#botoning").click(function() {
		if (Frut.validaRut($("#usuario").val())) {
			$("#msgerror").html("RUT correcto");
			var b = document.getElementById("contras").value;
			if (b != "") {
				location.href = "listadousuarios.html";
			}
		} else {
			$("#msgerror").html("Error: Formato incorrecto o RUT inválido");
		}
	});