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
		response.getWriter().append("Served at: ").append(request.getContextPath());
		String articulo = request.getParameter("arti");
		int cantidad = Integer.parseInt(request.getParameter("cantidad"));
		int preciound = Integer.parseInt(request.getParameter("preciound"));
		String nombre = request.getParameter("nombres");
		String apellido = request.getParameter("apellidos");
		String tipo_tarjeta = request.getParameter("boton");
		String tarjeta_credito = request.getParameter("numerotar");
		String total_compra = String.valueOf(preciound * cantidad);
		Date fecha = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/YYYY");
		String fecha_String = sdf.format(fecha);
		InetAddress dir = InetAddress.getLocalHost();
		int i = dir.toString().indexOf("/");
		String dirS = dir.toString().substring(i + 1);

		String nextUML = "/respuestaTallerTres.jsp";
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(nextUML);
		request.setAttribute("arti", articulo);
		request.setAttribute("nombres", nombre);
		request.setAttribute("apellidos", apellido);
		request.setAttribute("total", total_compra);
		request.setAttribute("cantidad", cantidad);
		request.setAttribute("preciound", preciound);
		request.setAttribute("numerotar", tarjeta_credito);
		request.setAttribute("bot", tipo_tarjeta);
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
