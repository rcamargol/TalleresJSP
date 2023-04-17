package co.edu.unbosque.model;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.InetAddress;

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
		String fecha = new java.util.Date().toLocaleString();
		String ip = InetAddress.getLocalHost().toString();
		String articuloselec = request.getParameter("articulo");
		int cant = Integer.parseInt(request.getParameter("cantidad"));
		Double preciounidad = Double.parseDouble(request.getParameter("preciou"));
		String nombres = request.getParameter("nombres");
		String apellidos = request.getParameter("apellidos");
		String tarjeta = request.getParameter("radio");
		String numerotarj = request.getParameter("numtarjeta");
		String numerotarj2 = request.getParameter("numtarjeta2");
//		char[] cadena = numerotarj.toCharArray();
		String tarj = "**** **** **** " + numerotarj.substring(12);
//		for (int i = cadena.length - 4; i < cadena.length; i++) {
//			tarj += i;
//		}

		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/respuestaTaller.jsp");
		request.setAttribute("respuesta", "<center>" + "<h1>¡Compra exitosa!</h1>" + "<h2>Señor(a) usuario " + nombres
				+ " " + apellidos + "</h2>" + "<h3>Compra realizada con la tarjeta numero " + tarj + " de " + tarjeta
				+ "</h3><br>" + "<h4>Fecha de compra: " + fecha + "<br></h4>" + "<h4>Direccion IP: " + ip + "<br></h4>"
				+ "<table border=\"1px solid black\" border-collapse=\"collapse\"><tr>" + "<td><h2>Cantidad</h2></td>"
				+ "<td><h2>Producto</h2></td>" + "<td><h2>Valor unidad</h2></td>" + "<td><h2>Valor total</h2></td>"
				+ "</tr><tr><td><h2>" + cant + "</h2></td><td><h2>" + articuloselec + "</h2></td><td><h2>"
				+ preciounidad + "</h2></td><td><h2>" + cant * preciounidad
				+ "</h2></td></tr></table><br><a href=\"formularioTaller.jsp\">Volver</a></center>");
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

}
