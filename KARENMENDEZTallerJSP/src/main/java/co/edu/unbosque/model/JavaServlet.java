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
 * Servlet implementation class JavaServlet
 */
@WebServlet("/JavaServlet")
public class JavaServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public JavaServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		String nextHTML = "/respuesta.jsp";

		LocalDate fecha = LocalDate.now();
		String[] fech = fecha.toString().split("-");

		String nombresDelCliente = request.getParameter("nombresDelCliente");
		String apellidosDelCliente = request.getParameter("apellidosDelCliente");
		String numTarjeta = request.getParameter("numTarjeta");
		String tipoTarjeta = request.getParameter("tipoTarjeta");
		
		String cantidadStr = request.getParameter("cantidad");
		String precioPorUnidadStr = request.getParameter("precioPorUnidad");

		int cantidad = 0;
		if (cantidadStr != null && !cantidadStr.trim().isEmpty()) {
		    cantidad = Integer.parseInt(cantidadStr);
		}

		int precioPorUnidad = 0;
		if (precioPorUnidadStr != null && !precioPorUnidadStr.trim().isEmpty()) {
		    precioPorUnidad = Integer.parseInt(precioPorUnidadStr);
		}

		double total = cantidad * precioPorUnidad;
		InetAddress ipClient = InetAddress.getLocalHost();
		PrintWriter writer = response.getWriter();
		writer.println("<h1>Señor usuario: "+nombresDelCliente+"  "+apellidosDelCliente+"</h1>");
		// Obtener el valor seleccionado del select
		String posArticuloStr = request.getParameter("articulos");
		int posArticulo = Integer.parseInt(posArticuloStr);

		// Obtener el nombre del artículo correspondiente
		String articulos;
		if(posArticulo == 1) {
			articulos = "Zapatos";
		} else if(posArticulo == 2) {
			articulos = "Camisas";
		}else if(posArticulo == 3) {
				articulos = "Relojes";
		}else if(posArticulo == 4) {
			articulos = "Libros";
		}else if(posArticulo == 5) {
			articulos = "Computadores";
		}else {
			articulos = "Artículo desconocido";
		}
		writer.println("<h2>Su compra fue realizada satisfactoriamente por un valor de : "+total+ " Correspondiente a : "+cantidad+ " " +articulos+".</h2>");
		writer.println("<h3>El precio por unidad fue de : "+precioPorUnidad+"</h3>");
		
		String ultimosCuatro = numTarjeta.substring(numTarjeta.length() - 4);
		String mascara = "**** **** **** ";
		String tarjetaMascarada = mascara + ultimosCuatro;

		writer.println("<h4>la compra fue realizada con la tarjeta de crédito número: " + tarjetaMascarada + " de la franquicia "+tipoTarjeta+ ". "
				+ " Fecha de la compra :"+fecha+"</h4>");
		writer.println("<h5> Direccion IP : "+ipClient+"</h5>");
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
