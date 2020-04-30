package com.parcial.control;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;

import com.google.gson.Gson;
import com.parcial.Dao.UsuarioDuiDao;
import com.parcial.model.Persona;

/**
 * Servlet implementation class ServeletDui
 */
public class ServeletDui extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServeletDui() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String capturar = request.getParameter("caja");
		System.out.println(capturar);
		
		UsuarioDuiDao duiD = new UsuarioDuiDao();
		Persona usuDao=new Persona();
		usuDao.setDui(capturar);
		
		Gson json=new Gson();
		try {

			response.getWriter().append(json.toJson(duiD.ingresoDui(usuDao)));
			
			
		}catch (Exception e) {
			JOptionPane.showMessageDialog(null,"Error en Gson"+e );
			
			
		}
		
	
			
		
		
	}

}
