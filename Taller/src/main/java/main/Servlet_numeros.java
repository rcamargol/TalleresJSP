package main;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Servlet_numeros
 */
@WebServlet("/Servlet_numeros")
public class Servlet_numeros extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Servlet_numeros() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		int numero_1 = Integer.parseInt(request.getParameter("numero_1"));
		int numero_2 = Integer.parseInt(request.getParameter("numero_2"));
		int multiplicacion = numero_1*numero_2;
		int suma = numero_1+numero_2;
		int resta = numero_1-numero_2;
		double division = numero_1/numero_2;
		
		
		String HTML = "/respuesta_numeros.jsp";
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(HTML);
		
		request.setAttribute("numero_1", numero_1);
		request.setAttribute("numero_2", numero_2);
		request.setAttribute("multiplicacion", multiplicacion);
		request.setAttribute("suma", suma);
		request.setAttribute("resta", resta);
		request.setAttribute("division", division);
		
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
