package co.edu.unbosque.model;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.InetAddress;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.Calendar;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class DemoServlet
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
		response.getWriter().append("Served at: ").append(request.getContextPath());
		String articulo = request.getParameter("articulo");
		String nombre = request.getParameter("nombre");
		String apellido = request.getParameter("apellido");
		String cantidad = request.getParameter("cantidad");
		String precio = request.getParameter("precio");
		String numtarjeta = request.getParameter("numtarjeta");
		String confirmar = request.getParameter("confirmar");
		String tarjeta = request.getParameter("tarjeta");
		String dia = DateTimeFormatter.ofPattern("dd/MM/yyyy").format(LocalDate.now());

		int compra = Integer.parseInt(cantidad) * Integer.parseInt(precio);

		String comprobacion = String.valueOf(numtarjeta);

		String num = numtarjeta.substring(12, 16);

		String nextHTML = "/respuestataller.jsp";
		RequestDispatcher dispacher = getServletContext().getRequestDispatcher(nextHTML);
		request.setAttribute("articulo", articulo);
		request.setAttribute("nombre", nombre);
		request.setAttribute("apellido", apellido);
		request.setAttribute("cantidad", cantidad);
		request.setAttribute("precio", precio);
		request.setAttribute("num", num);
		request.setAttribute("tarjeta", tarjeta);
		request.setAttribute("compra", compra);
		request.setAttribute("dia", dia);
		request.setAttribute("ip", InetAddress.getLocalHost().getHostAddress());
		dispacher.forward(request, response);

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
