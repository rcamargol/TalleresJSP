package co.edu.unbosque.model;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Receptor1
 */
@WebServlet("/Receptor1")
public class Receptor1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Receptor1() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		double n1 = Double.parseDouble(request.getParameter("n1"));
		double n2 = Double.parseDouble(request.getParameter("n2"));
		double suma = n1 + n2;
		double multiplicacion = n1 * n2;
		double division = n1 / n2;
		double resta = n1 - n2;
		String nextHTML = "/respuesta1.jsp";
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(nextHTML);
		request.setAttribute("n1", n1);
		request.setAttribute("n2", n2);
		request.setAttribute("suma", suma);
		request.setAttribute("multiplicacion", multiplicacion);
		request.setAttribute("division", division);
		request.setAttribute("resta", resta);
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
