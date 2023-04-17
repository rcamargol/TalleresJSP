package co.edu.unbosque.model;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ServletFuncional
 */
@WebServlet("/ServletFuncional")
public class ServletFuncional extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	public String mostrarDireccionIP() {
		try {
			InetAddress dir = InetAddress.getLocalHost();
			int i = dir.toString().indexOf("/");
			String dirS = dir.toString().substring(i+1);
			return dirS;
		}catch(UnknownHostException e){
			String error = "Host Desconocido";
			return error;
		}
	}

	public int mostrarTotalCompra(int cantidad, int unidad) {
		int totalCompra = cantidad * unidad;
		return totalCompra;
	}
	
	public long mostrarFinalTarjeta(long tarjeta) {
		long finalTarjeta = tarjeta % 10000;
		return finalTarjeta;
	}

	public String definirArticulo(int articulo){
		String seleccion = "";
		if(articulo == 75000) {
			seleccion = " pares de Zapatos";
		}
		if(articulo == 45000) {
			seleccion = " Camisas.";
		}
		if(articulo == 95000) {
			seleccion = " Relojes.";
		}
		if(articulo == 20000) {
			seleccion = " Libros.";
		}
		if(articulo == 3000000) {
			seleccion = " Computadores.";
		}
		return seleccion;
	}
       
    public ServletFuncional() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String nombrec = request.getParameter("nombrec");
		String apellidoc = request.getParameter("apellidoc");
		String marca = request.getParameter("marca");
		String articulo = request.getParameter("articulo");
		String cantidad = request.getParameter("cantidad");
		String tarjeta = request.getParameter("tarjeta");
		PrintWriter writer = response.getWriter();
		writer.println("Señor Usuario: " + nombrec + " " + apellidoc);
		writer.println("Su compra fue realizada satisfactoriamente por un valor de " + mostrarTotalCompra(Integer.parseInt(cantidad), Integer.parseInt(articulo)) + ". Correspondiente a " + cantidad + definirArticulo(Integer.parseInt(articulo)));
		writer.println("El precio por unidad fue de: " + articulo);
		writer.println("La compra fue realizada con la tarjeta de credito numero: **** **** **** " + mostrarFinalTarjeta(Long.parseLong(tarjeta)) + " de la franquicia " + marca + ". La fecha de la compra es: " + DateTimeFormatter.ofPattern("dd/MM/yy HH:mm:ss").format(LocalDateTime.now()));
		writer.println("Direccion IP: " + mostrarDireccionIP());
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
