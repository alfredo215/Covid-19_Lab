<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<title>Registro de Dui</title>
</head>
<%
String idBus = request.getParameter("idBus");
String Nusuario = request.getParameter("Nu");
String Dusuario = request.getParameter("Du");

if(idBus==null){
	idBus="";
	Nusuario="";
	Dusuario="";

}

%>
<body>
<form action="ServeletFuciones">
<table align="center" clas="table table-dark"> 
<thead>
</thead>
<tbody>
<tr>
				
<td>
<p>id</p> <input type="text" name="Id" id="idcargar" value="<%=idBus%>">
<p>Nombre Usuario</p> <input type="text" name="Npersona" value="<%=Nusuario%>">
<p>Numero de Dui</p> <input type="text" name="Ndui" value="<%=Dusuario%>">

<br> <br>



</td>
</tr>
</tbody>
</table>

<input  type="submit" class="btn btn-info" value=GUARDAR name="btn">
<input  type="submit" class="btn btn-info" value=Actualizar name="btn">
</form>
</body>
</html>