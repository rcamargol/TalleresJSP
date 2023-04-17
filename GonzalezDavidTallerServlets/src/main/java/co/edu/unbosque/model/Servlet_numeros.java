package co.edu.unbosque.model;
import java.util.ArrayList;

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
		String nextHTML2="/Resultado_numeros.jsp";
		String digito1 = request.getParameter("digito1");
		String digito2 = request.getParameter("digito2");
		int numero1_int=Integer.parseInt(digito1);
		int numero2_int=Integer.parseInt(digito2);
		double numero1 = Double.parseDouble(digito1);
		double numero2 = Double.parseDouble(digito2);
		double suma = numero1+numero2;
		double resta = numero1-numero2;
		double multiplicacion = numero1*numero2;
		double division = numero1/numero2;
		ArrayList<Integer> listaNumeros = new ArrayList<Integer>();

		for(int i=numero1_int; i< numero2;i++) {
			listaNumeros.add(i);
			}
		for(int i=numero2_int; i<numero1;i++) {
			listaNumeros.add(i);
		}
		
		
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(nextHTML2);
		request.setAttribute("numero1", numero1);
		request.setAttribute("numero2", numero2);
		request.setAttribute("suma", suma);
		request.setAttribute("resta", resta);
		request.setAttribute("division", division);
		request.setAttribute("multiplicacion", multiplicacion);
		request.setAttribute("lista", listaNumeros);
	
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
