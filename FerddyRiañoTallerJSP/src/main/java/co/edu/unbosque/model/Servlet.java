package co.edu.unbosque.model;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Date;

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

	public String obtenerIP() {
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

	public int calcularValorTotal(int cant, int valorUnidad) {
		int valorTotal = cant * valorUnidad;
		return valorTotal;
	}
	
	public long obtenerUltimosDigitos(long nt) {
		long ultimosDigitos = nt % 10000;
		return ultimosDigitos;
	}

	public String obtenerProducto(int valor, int cantidad){
		String producto = "";
		if(valor == 50000) {
			if(cantidad == 1) {
				producto = " par de Zapatos";
			}else {
				producto = " pares de Zapatos";
			}
		}
		if(valor == 30000) {
			if(cantidad == 1) {
				producto = " Camisa.";
			}else {
				producto = " Camisas.";
			}
		}
		if(valor == 100000) {
			if(cantidad == 1) {
				producto = " Reloj";
			}else {
				producto = " Relojes.";
			}
		}
		if(valor == 15000) {
			if(cantidad == 1) {
				producto = " Libro.";
			}else {
				producto = " Libros.";
			}
		}
		if(valor == 2500000) {
			if(cantidad == 1) {
				producto = " Computador.";
			}else {
				producto = " Computadores.";
			}
		}
		return producto;
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String nextHTML = "/respuesta.jsp";
		String ncli = request.getParameter("ncli");
		String acli = request.getParameter("acli");
		String fran = request.getParameter("fran");
		String art = request.getParameter("art");
		String cant = request.getParameter("cant");
		String nt = request.getParameter("nt");
		request.setAttribute("ncli", ncli);
		request.setAttribute("acli", acli);
		request.setAttribute("fran", fran);
		request.setAttribute("art", art);
		request.setAttribute("cant", cant);
		request.setAttribute("nt", nt);
		request.setAttribute("calcularValorTotal", calcularValorTotal(Integer.parseInt(cant), Integer.parseInt(art)));
		request.setAttribute("obtenerUltimosDigitos", obtenerUltimosDigitos(Long.parseLong(nt)));
		request.setAttribute("obtenerProducto", obtenerProducto(Integer.parseInt(art), Integer.parseInt(cant)));
		request.setAttribute("obtenerIP", obtenerIP());
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(nextHTML);
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
