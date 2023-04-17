package co.edu.unbosque.model;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.InetAddress;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Date;
import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/servlet")
public class servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	public String obtenerIP() {
		try {
			InetAddress dir = InetAddress.getLocalHost();
			int i = dir.toString().indexOf("/");
			String dirS = dir.toString().substring(i+1);
			return dirS;
		} catch (Exception e) {
			String error = "Host desconocido";
			return error;
		}
	}
	
	public int calcularValorTotalCompras(int cantidadArticulos, int articulos) {
		int valorTotal = cantidadArticulos * articulos;
		return valorTotal;
	}
	
	public long ultimosDigitosTarjeta(long numeroTarjeta) {
		long ultimosDigitosTarjeta = numeroTarjeta % 10000;
		return ultimosDigitosTarjeta;
	}
	
	public String nombreProducto(int articulos, int cantidadArticulos) {
		String nombreArticulo = "";
		if(articulos == 100000) {
			if(cantidadArticulos == 1) {
				nombreArticulo = " par de zapatos";
			}else {
				nombreArticulo = " pares de zapatos";
			}
		}
		if(articulos == 50000) {
			if(cantidadArticulos == 1) {
				nombreArticulo = " camisa";
			}else {
				nombreArticulo = " camisas";
			}
		}
		if(articulos == 30000) {
			if(cantidadArticulos == 1) {
				nombreArticulo = " reloj";
			}else {
				nombreArticulo = " relojes";
			}
		}
		if(articulos == 10000) {
			if(cantidadArticulos == 1) {
				nombreArticulo = " libro";
			}else {
				nombreArticulo = " libros";
			}
		}
		if(articulos == 1200000) {
			if(cantidadArticulos == 1) {
				nombreArticulo = " computador";
			}else {
				nombreArticulo = " computadores";
			}
		}
		return nombreArticulo;
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String articulos = request.getParameter("articulos");
		String cantidadArticulos = request.getParameter("cantidadArticulos");
		String nombres = request.getParameter("nombres");
		String apellidos = request.getParameter("apellidos");
		String tarjeta = request.getParameter("tarjeta");
		String numeroTarjeta = request.getParameter("numeroTarjeta");
		String nextHTML = "/respuesta.jsp";
		request.setAttribute("articulos", articulos);
		request.setAttribute("cantidadArticulos", cantidadArticulos);
		request.setAttribute("nombres", nombres);
		request.setAttribute("apellidos", apellidos);
		request.setAttribute("tarjeta", tarjeta);
		request.setAttribute("numeroTarjeta", numeroTarjeta);
		request.setAttribute("calcularValorTotalCompras", calcularValorTotalCompras(Integer.parseInt(cantidadArticulos), Integer.parseInt(articulos)));
		request.setAttribute("obtenerIP", obtenerIP());
		request.setAttribute("UltimosDigitosTarjeta", ultimosDigitosTarjeta(Long.parseLong(numeroTarjeta)));
		request.setAttribute("nombreProducto", nombreProducto(Integer.parseInt(articulos), Integer.parseInt(cantidadArticulos)));
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(nextHTML);
		dispatcher.forward(request, response);
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
