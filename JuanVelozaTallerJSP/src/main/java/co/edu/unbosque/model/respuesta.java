package co.edu.unbosque.model;

import java.awt.image.DataBufferByte;
import java.io.IOException;
import java.io.PrintWriter;
import java.net.InetAddress;
import java.sql.Date;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class respuesta
 */
@WebServlet("/respuesta")
public class respuesta extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public respuesta() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String nextHTML = "/Datos.jsp";
		String producto = request.getParameter("producto");
		String cantidad = request.getParameter("cantidad");
		String nombres = request.getParameter("nombres");
		String apellidos = request.getParameter("apellidos");
		String tarjeta = request.getParameter("numero");
		String tipoTarjeta = request.getParameter("tarjeta");
		
		String linea1 = "Señor usuario: " + nombres + " " + apellidos;
		String linea2 ="Su compra fue realizada satisfactoriamente por un valor de: " + "$"+ calcularPrecio(Long.parseLong(cantidad), Long.parseLong(producto)) + " Correspondiente a " + cantidad + " "+ nombreProducto(Integer.parseInt(producto));
		String linea3 = "El precio por unidad de articulo fue de: " + "$"+ producto;
		String linea4 ="La compra fue realizada con la tarjeta de credito numero: **** **** **** **** " + mostrarTarjeta(Long.parseLong(tarjeta))  + " de la franquicia " + tipoTarjeta +"."  + " Fecha de compra: " + DateTimeFormatter.ofPattern("dd/MM/yyyy HH:mm:ss").format(LocalDateTime.now());
		String linea5 = "Direccion IP: " + obtenerIP();
		
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(nextHTML);
		request.setAttribute("linea1", linea1);
		request.setAttribute("linea2", linea2);
		request.setAttribute("linea3", linea3);
		request.setAttribute("linea4", linea4);
		request.setAttribute("linea5", linea5);
		dispatcher.forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

	protected long calcularPrecio(long cantidad, long producto) {
		long precio = cantidad * producto;
		return precio;
	}
	
	
	
	protected String obtenerIP() {
		try {
			InetAddress dir = InetAddress.getLocalHost();
			int i = dir.toString().indexOf("/");
			String dirS = dir.toString().substring(i+1);
			return dirS;
		} catch (Exception e) {
			String exception = "Host no encontrado";
			return exception;
		}
	}
	
	protected long mostrarTarjeta(long numerotarjeta) {
		long ultimosdigitos = numerotarjeta % 10000;
		return ultimosdigitos;
	}
	
	protected String nombreProducto(int articulo) {
		String producto = "";
		if(articulo == 50000) {
			producto = "Zapatos";
		}else if(articulo == 20000) {
			producto = "Camisas(s)";
		}else if(articulo == 100000) {
			producto = "Reloj(es)";
		}else if(articulo == 70000) {
			producto = "Libro(s)";
		}else if(articulo == 300000) {
			producto = "Computador(es)";
		}
		
		return producto;
	}
}
