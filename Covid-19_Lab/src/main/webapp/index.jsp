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
		$('#carga').click(function(event){
			var	btn = $('#carga').val();
			$.post('ServeletDui',{

			},function(respose){

			let datos = JSON.parse(respose);

			var responder=document.getElementById('respuesta')
			for(let item of datos){
			
			responder.innerHTML+=`
			${item.nombre}
			`
		}
		});
			
		});
	});
</script>
<body>
<link rel="stylesheet" type="text/css" href="css/Estilo.css">

<form action="ServeletDui" method="get"> 
<p><img src="img\logo.png" class="mx-auto d-block" style="max-height: 60px; max-width:100%;">
</p>
	

<br>

<h2 align="center">Consulta quién de tu familia es el beneficiario del apoyo <br>
económico para alimentación en la emergencia</h2>

<br>
<br>
<br>
<h1 class="text-center mt-1"><span class="badge badge-success">COVID-19</span></h1>

		 <table align="center">
		 	<tbody>
		 		<tr>
		 			<td>
		 <br>
		<input type="text" placeholder="Ingresa tu número de DUI" name="Dui">
		<input type="submit" value="CONSULTAR" id="carga" class="btn btn-success">
		<a href="tablaDui.jsp" class="btn btn-success">Registar  Dui</a>
		<br>
		<br>
		<br>
		<br>

		<label id="respuesta"> </label>
		 				
		 			</td>
		 		</tr>
		 	</tbody>

		 </table>



	

		
		

</form> 

</body>
</html>

