<html>
<link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<script src="http://code.jquery.com/jquery-latest.js">
</script>
<head>
	<%@page contentType="text/html"%>
	<%@page pageEncoding="UTF-8"%>
	<meta charset="utf-8">
</head>
<script type="text/javascript">
	$(document).ready(function(){
		$('#carga').click(function(){
			
			var	caja = $('#datos').val();
			$.post('ServeletDui',{
				caja
			},function(respose){

			let datos = JSON.parse(respose);
			console.log(datos)

			var responder=document.getElementById('respuesta')
			responder.innerHTML="Lo sentimos no eres beneficiado";
			for(let item of datos){
			responder.innerHTML = item.respuesta+"Eres beneficiado de los $300 dolares";
			
		}
		});
			
		});
	});
	<!-- ---------------------------------------------------------------------------------------------------------- -->
</script>
<body>
<link rel="stylesheet" type="text/css" href="css/Estilo.css">

<!-- <form action="ServeletDui" method="get">  -->
<p><img src="img\logo.png" class="mx-auto d-block" style="max-height: 60px; max-width:100%;">
</p>
	

<br>

<h2 align="center">Consulta quién de tu familia es el beneficiario del apoyo <br>
económico para alimentación en la emergencia</h2>

<br>
<br>
<br>
<h1 class="text-center mt-1"><span class="badge badge-success">COVID-19</span></h1>
<br>
<br>
<div class="col-12 col-md-8 offset-md-2 col-lg-6 offset-lg-3">
<div class="input-group mb-3">
<input type="text" class="form-control light-grey" id="datos" name="Dui" style="background-color: #f2f2f2;" placeholder="Ingresa tu número de DUI">
<div class="input-group-append">
<input type="submit" value="CONSULTAR" id="carga" class="btn btn-success">
<a href="tablaDui.jsp" class="btn btn-success">Registar  Dui</a>
</div>
</div>

<label id="respuesta"> </label>
</div>



	

		
		

<!--</form>   -->

</body>
</html>

