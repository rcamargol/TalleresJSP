package co.edu.unbosque.model;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Ejercicio2Servlet
 */
@WebServlet("/Ejercicio2Servlet")
public class Ejercicio2Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Ejercicio2Servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter writer = response.getWriter();
		double inf = Double.parseDouble(request.getParameter("inf"));
		double sup = Double.parseDouble(request.getParameter("sup"));
		
		
		request.setAttribute("inferior",inf );
		request.setAttribute("superior",sup );
		
		String html = "/RespuestaEjercicio2.jsp";
		RequestDispatcher despachador = getServletContext().getRequestDispatcher(html);
		request.setAttribute("orden", "Respuesta desde Servlet!!");
		despachador.forward(request, response);
		writer.close();
		
	}

}
