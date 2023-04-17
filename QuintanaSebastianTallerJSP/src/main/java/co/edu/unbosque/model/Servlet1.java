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
 * Servlet implementation class Servlet1
 */
@WebServlet("/Servlet1")
public class Servlet1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	public String dirreccionIP() {
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

	public int totalCompra(int cantidad, int unidad) {
		int totalCompra = cantidad * unidad;
		return totalCompra;
	}
	
	public long fTarjeta(long tarjeta) {
		long finalTarjeta = tarjeta % 10000;
		return finalTarjeta;
	}

	public String precioProducto(int articulo){
		String seleccion = "";
		if(articulo == 129900) {
			seleccion = " pares de Zapatos";
		}
		if(articulo == 59900) {
			seleccion = " Camisas.";
		}
		if(articulo == 129900) {
			seleccion = " Relojes.";
		}
		if(articulo == 39900) {
			seleccion = " Libros.";
		}
		if(articulo == 4699900) {
			seleccion = " Computadores.";
		}
		return seleccion;
	}
       
    public Servlet1() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String nombreu = request.getParameter("nombreu");
		String apellidou = request.getParameter("apellidou");
		String empresa = request.getParameter("empresa");
		String articulo = request.getParameter("articulo");
		String cantidad = request.getParameter("cantidad");
		String tarjeta = request.getParameter("tarjeta");
		PrintWriter writer = response.getWriter();
		writer.println("Señor Usuario: " + nombreu + " " + apellidou+"\n");
		writer.println("Su compra fue realizada exitosamente por un valor de " + totalCompra(Integer.parseInt(cantidad), Integer.parseInt(articulo)) + ". Correspondiente a " + cantidad + precioProducto(Integer.parseInt(articulo))+"\n");
		writer.println("El precio por unidad fue de: " + articulo+"\n");
		writer.println("compra realizada con la tarjeta de credito numero: **** **** **** " + fTarjeta(Long.parseLong(tarjeta)) + " de la franquicia " + empresa + ". fecha de la compra : " + DateTimeFormatter.ofPattern("dd/MM/yy HH:mm:ss").format(LocalDateTime.now())+"\n");
		writer.println("Direccion IP: " + dirreccionIP()+"\n");
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
