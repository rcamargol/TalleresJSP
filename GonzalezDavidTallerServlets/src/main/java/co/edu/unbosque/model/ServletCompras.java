package co.edu.unbosque.model;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.InetAddress;
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
 * Servlet implementation class ServletCompras
 */
@WebServlet("/ServletCompras")
public class ServletCompras extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletCompras() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
        InetAddress direccion = InetAddress.getLocalHost();
       


		response.getWriter().append("Served at: ").append(request.getContextPath());
		String nextHTML = "/RespuestaCompra.jsp";
		String articulo = request.getParameter("articulo");
		String cantidad = request.getParameter("cantidad");
		int cantidad_int = Integer.parseInt(cantidad);
		String precio_por_unidad = request.getParameter("precio_por_unidad");
		int precio_por_unidad_int = Integer.parseInt(precio_por_unidad);
		int precio_total = precio_por_unidad_int* cantidad_int;
		String nombre_cliente = request.getParameter("nombre_cliente");
		String apellidos_del_cliente= request.getParameter("apellidos_del_cliente");
		String tarjeta = request.getParameter("tarjeta");
		String numero_tarjeta = request.getParameter("numero_tarjeta");
		String confirmar_numero = request.getParameter("confirmar_numero");
		String asteriscos = ("**** **** ****");
		String ultimos4digitos =  numero_tarjeta.substring(numero_tarjeta.length()-4);
		String IP = direccion.getHostAddress();
		PrintWriter writer = response.getWriter();
		LocalDate fechaActual= LocalDate.now();
		String fechaFormateada = fechaActual.format(DateTimeFormatter.ofPattern("dd/MM/yyyy"));
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(nextHTML);
		request.setAttribute("total_compra", precio_total);
		request.setAttribute("usuario", nombre_cliente+" "+apellidos_del_cliente);
		request.setAttribute("articulo", articulo);
		request.setAttribute("cantidad", cantidad_int);
		request.setAttribute("precio_unidad", precio_por_unidad);
		request.setAttribute("asteriscos", asteriscos);
		request.setAttribute("digitos", ultimos4digitos);
		request.setAttribute("fecha", fechaFormateada);
		request.setAttribute("tarjeta", tarjeta);
		request.setAttribute("IP", IP);
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