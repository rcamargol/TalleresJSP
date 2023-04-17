package co.edu.unbosque.model;

import java.io.IOException;
import java.net.InetAddress;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.Iterator;

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
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		String html = "/resultado.jsp";
		
		String articulo = request.getParameter("articulo");
		
		switch (articulo) {
		case "1": 
			articulo = "Zapatos";
			break;
		case "2":
			articulo = "Camisas";
			break;
		case "3": 
			articulo = "Relojes";
			break;
		case "4":
			articulo = "Libros";
			break;
		case "5": 
			articulo = "Computadores";
			break;
		}
		
		String cantidad = request.getParameter("cantidad");
		String precio = request.getParameter("precio");
		String nombre = request.getParameter("nombre");
		String apellido = request.getParameter("apellido");
		String tarjeta = request.getParameter("tarjeta");
		String numeroTarjeta = request.getParameter("numeroTarjeta");
        String ultimosCuatro = numeroTarjeta.substring(numeroTarjeta.length() - 4);
        String tarjetaOculta = "";
        if (numeroTarjeta.length() > 4) {
			for (int i = 0; i < numeroTarjeta.length() - 4; i++) {
				tarjetaOculta+= "*";
			}
		}
		boolean tCantidad = true;
		boolean tPrecio = true;
		int nCantidad = 0;
		int nPrecio = 0;
		int precioFinal = 0;
		String pfinal;
		String fecha;
		
		DateTimeFormatter formato = DateTimeFormatter.ofPattern("dd/MM/yyyy");
		LocalDate fechaActual = LocalDate.now();
		fecha = formato.format(fechaActual);
		
		try {
			nCantidad = Integer.parseInt(cantidad);
		} catch (NumberFormatException e) {
			tCantidad = false;
		}
		try {
			nPrecio = Integer.parseInt(precio);
		} catch (NumberFormatException e) {
			tPrecio = false;
		}
		
		if (tPrecio && tCantidad) {
			precioFinal = nCantidad * nPrecio;
			pfinal = precioFinal + "";
		}else {
			pfinal = "No se puede operar ya que hay otros caracteres";
			precio = "0";
			cantidad = "0";
		}
		
		RequestDispatcher despachador = getServletContext().getRequestDispatcher(html);
		request.setAttribute("articulo", articulo);
		request.setAttribute("cantidad", cantidad);
		request.setAttribute("precio", precio);
		request.setAttribute("pFinal", pfinal);
		request.setAttribute("nombre", nombre);
		request.setAttribute("apellido", apellido);
		request.setAttribute("tarjeta", tarjeta);
		request.setAttribute("numeroTarjeta", tarjetaOculta + ultimosCuatro);
		request.setAttribute("fecha", fecha);
		request.setAttribute("ip", InetAddress.getLocalHost().getHostAddress());
		despachador.forward(request, response);
		
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
