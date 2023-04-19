package co.edu.unbosque.model;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.InetAddress;
import java.time.LocalDate;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RedirectorServlet
 */
@WebServlet("/RedirectorServlet")
public class RedirectorServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public RedirectorServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		//response.getWriter().append("Served at: ").append(request.getContextPath());
		
		LocalDate fechaactual = LocalDate.now();
		String[] fechapart = fechaactual.toString().split("-");
		String numTarjeta = request.getParameter("numtarjeta");
		String[] nummTarjeta = numTarjeta.toString().split("-");
		InetAddress ipCliente = InetAddress.getLocalHost();

		String articulos = request.getParameter("articulos");
		String cantidad = request.getParameter("cantidad");
		String precioporunidad = request.getParameter("preciou");
		String nombreclien = request.getParameter("NombreCliente");
		String apellidoclien = request.getParameter("ApellidoCliente");
		
		String tipotarjeta = request.getParameter("tarjeta");
		int ncantidad = Integer.parseInt(cantidad);
		int nprecioporunidad = Integer.parseInt(precioporunidad);
		int PrecioTotal = ncantidad * nprecioporunidad;
		PrintWriter writer = response.getWriter();
		writer.println("<h1>Señor Usario: "+nombreclien+" "+apellidoclien+"</h1>");
		writer.println("<h1>Su compra fue realizada satisfactoriamente por un valor de $" + PrecioTotal
				+ " Correspondiente a\n " + cantidad + " " + articulos+"</h1>");
		writer.println("<h1>El precio por unidad fue: $" + precioporunidad+"</h1>");
		writer.println("<h1>La compra fue realizada con la tarjeta de credito numero: " + "**** **** **** " +nummTarjeta[3]+ " de la franquicia "
				+ tipotarjeta + ". Fecha de compra: " + fechapart[2] + "/" + fechapart[1] + "/" + fechapart[0]+"</h1>");
		writer.println("<h1>Direccion IP: "+ipCliente.getHostAddress()+"</h1>");
        writer.close();
        

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		
		
		doGet(request, response);
	}

}
