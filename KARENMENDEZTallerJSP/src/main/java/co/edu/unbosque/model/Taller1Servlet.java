package co.edu.unbosque.model;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Taller1Servlet
 */
@WebServlet("/Taller1Servlet")
public class Taller1Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Taller1Servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		response.getWriter().append("Served at: ").append(request.getContextPath());
		String nextHTML = "/respuestaTaller1.jsp";
		response.getWriter().append("Served at: ").append(request.getContextPath());
		String usuario = request.getParameter("usuario");
		int numero1 = Integer.parseInt(request.getParameter("numero1"));
	    int numero2 = Integer.parseInt(request.getParameter("numero2"));
		PrintWriter writer = response.getWriter();
		writer.println("<h1>Hola: "+usuario+"</h1>");
		writer.close();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
