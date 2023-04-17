package co.edu.unbosque.model;

import java.io.IOException;
import java.net.InetAddress;
import java.text.SimpleDateFormat;
import java.util.Date;

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
//		response.getWriter().append("Served at: ").append(request.getContextPath());
		String articulo = request.getParameter("articulo");
		int cantidad = Integer.parseInt(request.getParameter("cantidad"));
		int precio = Integer.parseInt(request.getParameter("precio"));
		String nombre = request.getParameter("nombre");
		String apellido = request.getParameter("apellido");
		String tipo_tarjeta = request.getParameter("boton1");
		String tarjeta_credito = request.getParameter("tarjetacredito");
		String total_compra = String.valueOf(precio*cantidad);
		Date fecha = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/YYYY");
		String fecha_String = sdf.format(fecha);
		InetAddress dir = InetAddress.getLocalHost();
		int i = dir.toString().indexOf("/");
		String dirS = dir.toString().substring(i +1);
		
		String nextUML = "/respuesta3.jsp";
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(nextUML);
		request.setAttribute("articulo", articulo);
		request.setAttribute("nombre", nombre);
		request.setAttribute("apellido", apellido);
		request.setAttribute("total", total_compra);
		request.setAttribute("cantidad", cantidad);
		request.setAttribute("precio", precio);
		request.setAttribute("tarjetacredito", tarjeta_credito);
		request.setAttribute("franquicia", tipo_tarjeta);
		request.setAttribute("fecha", fecha_String);
		request.setAttribute("ip", dirS);
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
