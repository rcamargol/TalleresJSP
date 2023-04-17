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
 * Servlet implementation class Ejercicio1Servlet
 */
@WebServlet("/Ejercicio1Servlet")
public class Ejercicio1Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Ejercicio1Servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		double numa = Double.parseDouble(request.getParameter("numa"));
		double numb = Double.parseDouble(request.getParameter("numb"));
		PrintWriter writer = response.getWriter();
		double suma = numa + numb;
		double resta = numa - numb;
		double multi = numa * numb;
		double divi = numa/numb;
		
		request.setAttribute("suma", suma);
		request.setAttribute("resta", resta);
		request.setAttribute("multi", multi);
		request.setAttribute("divi", divi);
		
		String html = "/RespuestaEjercicio1.jsp";
		RequestDispatcher despachador = getServletContext().getRequestDispatcher(html);
		despachador.forward(request, response);
		writer.close();
		
		
	}

}
