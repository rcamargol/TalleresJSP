package co.edu.unbosque.model;

import java.io.IOException;
import java.net.InetAddress;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Servlet1")
public class Servlet1 extends HttpServlet{
	private static final long serialVersionUID = 1L;
	
	public Servlet1() {
        super();
        // TODO Auto-generated constructor stub
    }

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String nextHTML ="/respuesta1.jsp";
		String articulo = req.getParameter("articulo");
		String cantidad = req.getParameter("cantidad");
		
		String nombres = req.getParameter("nombres");
		String apellidos = req.getParameter("apellidos");
		String tipo = req.getParameter("tipo");
		String tarjeta = req.getParameter("tarjeta");
		
		String letrero1 = "Señor/a Usuario: " + nombres + " "+ apellidos;
		String letrero2 = "Su compra fue realizada satisfactoriamente por un valor total de $" + 
							valorTotal(Integer.parseInt(cantidad), Integer.parseInt(articulo)) + " correspondiente a " + cantidad + " " 
							+ nomArt(Integer.parseInt(articulo)) + ".";
		String letrero3 = "El precio por unidad fue de: $" + articulo;
		String letrero4 = "La compra fue realizada con la tarjeta de crédito número: **** **** **** " + codTarjeta(Long.parseLong(tarjeta)) 
							+ " de la franquicia " + tipo + "."; 
		String letrero5 = "Fecha de la compra: " + DateTimeFormatter.ofPattern("dd/MM/yyyy HH:mm:ss").format(LocalDateTime.now());
		String letrero6 = "Dirección IP: " + InetAddress.getLocalHost().getHostAddress();
		
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(nextHTML);
		req.setAttribute("respuesta1", letrero1);
		req.setAttribute("respuesta2", letrero2);
		req.setAttribute("respuesta3", letrero3);
		req.setAttribute("respuesta4", letrero4);
		req.setAttribute("respuesta5", letrero5);
		req.setAttribute("respuesta6", letrero6);
		dispatcher.forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(req, resp);
	}
	
	protected int valorTotal(int cant, int precio) {
		int total = cant * precio;
		return total;
	}
	
	protected String nomArt(int art) {
		String elem = "";
		if(art==74000) {
			elem = "zapatos";
		} else if (art==42000) {
			elem = "camisas";
		} else if(art==28000) {
			elem = "relojes";
		} else if (art==15000) {
			elem = "libros";
		} else if(art==2700000) {
			elem = "computadores";
		}
		return elem;
	}
	
	protected long codTarjeta(long tarjeta) {
		long digito4;
		
		digito4 = tarjeta%10000;
		
		return digito4;
	}
}
