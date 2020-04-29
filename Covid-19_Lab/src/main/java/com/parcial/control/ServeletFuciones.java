package com.parcial.control;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.parcial.Dao.UsuarioDuiDao;
import com.parcial.model.Persona;

/**
 * Servlet implementation class ServeletFuciones
 */
public class ServeletFuciones extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServeletFuciones() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
	
	

		
		Persona per = new Persona();
		UsuarioDuiDao ud = new UsuarioDuiDao();

		String id = null;
		String nombreu = null;
		String duiu = null;

		try {
			id = request.getParameter("Id");
			nombreu = request.getParameter("Npersona");
			duiu = request.getParameter("Ndui");

			per.setId_Persona(Integer.parseInt(id));
			per.setNombre(nombreu);
			per.setDui(duiu);

		} catch (Exception e) {
		
		}

		String action = request.getParameter("btn");

		if (action.equals("GUARDAR")) {
			per.setId_Persona(Integer.parseInt(id));
			per.setNombre(nombreu);
			per.setDui(duiu);

			ud.agregarDatos(per);
		} else if (action.equals("Actualizar")) {

			per.setId_Persona(Integer.parseInt(id));
			per.setNombre(nombreu);
			per.setDui(duiu);

			ud.actualizarDatos(per);

		} else if (action.equals("ELIMINAR")) {
			per.setId_Persona(Integer.parseInt(id));
			ud.eliminarDatos(per);
		}
		response.sendRedirect("tablaDui.jsp");

	}
	
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		
		
		UsuarioDuiDao rd =new UsuarioDuiDao();
		Gson json = new Gson();
		
		
		try {
			response.getWriter().append(json.toJson(rd.registrarD()));
			
		} catch (Exception e) {
			System.out.println(e+"Error a");
		}

	
	
	}
	

}
