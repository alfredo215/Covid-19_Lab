<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>



<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="ISO-8859-1">

<link rel="stylesheet" type="text/css" href="css/stilo.css">
<link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<script src="http://code.jquery.com/jquery-latest.js"></script>

<script type="text/javascript">
	$(document).ready(function(){
		
		

			var btn= $('#carga').val();
			$.post('ServeletFuciones',{

			},function(response){

			var datos = JSON.parse(response);
			//console.log(response);


			var tabladatos = document.getElementById('tablaDatos');
			for (let item of datos){

				tabladatos.innerHTML +=`

		 		<tr>
				
		 		<td>${item.id_Persona}</td>
		 		<td>${item.nombre}</td>
		 		<td>${item.dui}</td>
		 		<td>
		 		<a href="ServeletFuciones?btn=ELIMINAR&Id=${item.id_Persona}" class="btn btn-warning" >Eliminar</a>
		 		<a href="botones.jsp?idBus=${item.id_Persona}&Nu=${item.nombre}&Du=${item.dui}" class="btn btn-danger" >Actualizar</a>
		 		</td>
		 	    </tr>
		 	   
				`

			}

		

		});
	});


</script>


<title>Registro De Dui</title>

</head>

<body>

<p><img src="img\logo.png" class="mx-auto d-block" style="max-height: 60px; max-width:100%;">
</p>
	<div class="box-stilo">
	
	

<br><br>

 <a href="botones.jsp" class="btn btn-info">Registre su Dui Aqui</a>

<table align="center" class="table table-dark" id="tablaDatos" >
	
	<thead>
	
	<th>ID</th>
	<th>Nombre</th>	
	<th>Numero Dui</th>	
	<th>Opciones</th>
	
	</thead>

	<tbody>
		
	</tbody>

</table>




</div>
</body>
</html>