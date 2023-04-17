package co.edu.unbosque.model;

import java.io.IOException;
import java.io.PrintWriter;
import java.lang.invoke.WrongMethodTypeException;
import java.net.InetAddress;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Servlet
 */
@WebServlet("/Servlet")
public class Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Servlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		// response.getWriter().append("Served at: ").append(request.getContextPath());
		String nextHtml = "/Respuesta.jsp";
		RequestDispatcher dispatcher=getServletContext().getRequestDispatcher(nextHtml);

		String articulo = request.getParameter("valores");//
		String cantidad = request.getParameter("Cantidad");//
		String precio = request.getParameter("Unidad");//
		String nombre = request.getParameter("Nombre");//
		String apellido = request.getParameter("Apellido");
		String tarjeta = request.getParameter("Tarjeta");//
		String credito = request.getParameter("Credito");//
		String conficredito = request.getParameter("ConfirmarCredito");
		String fecha = traerFechayHora();
		InetAddress ip=InetAddress.getLocalHost();
			
		request.setAttribute("Nombre",nombre);
		request.setAttribute("Cantidad",cantidad);
		request.setAttribute("Precio",precio);
		request.setAttribute("Credito",credito);
		request.setAttribute("Tarjeta",tarjeta);
		request.setAttribute("Articulo",articulo);
		request.setAttribute("Fecha", fecha);
		request.setAttribute("IP", ip);
		dispatcher.forward(request, response);
		
	
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

	public static String traerFechayHora() {
		DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd HH:mm:ss");
		String aux = dtf.format(LocalDateTime.now());
		return aux;
	}
}
