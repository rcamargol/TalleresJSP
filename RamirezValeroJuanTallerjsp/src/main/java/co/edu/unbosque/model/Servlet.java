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
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String nextHTML = "/Index.jsp";
		String producto= request.getParameter("producto");
		String Nproductos = request.getParameter("Nproductos");
		String nombres = request.getParameter("nombre");
		String apellidos = request.getParameter("apellidos");
		String tarjeta = request.getParameter("numero");
		String tarjetaVMA = request.getParameter("tarjeta");
		
		
		
		String linea1 = " usuario "+ nombres  + apellidos;
		String linea2 ="Su compra fue realizada, y el valor es : " + calcularMonto(Long.parseLong(Nproductos), Long.parseLong(producto)) + " Correspondiente a " + Nproductos + " "+ nombre(Integer.parseInt(producto));
		String linea3 = "El precio de la unidad fue: " + producto;
		String linea4 ="La compra fue realizada con esta tarjeta de credito: **** **** **** **** " + nTarjeta(Long.parseLong(tarjeta))  + " de la empresa" + tarjetaVMA +"."  + " Dia de compra " + DateTimeFormatter.ofPattern("dd/MM/yyyy HH:mm:ss").format(LocalDateTime.now());
		String linea5 = "Direccion IP: " + IP();
		
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(nextHTML);
		request.setAttribute("linea1", linea1);
		request.setAttribute("linea2", linea2);
		request.setAttribute("linea3", linea3);
		request.setAttribute("linea4", linea4);
		request.setAttribute("linea5", linea5);
		dispatcher.forward(request, response);
		
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	private long calcularMonto(long Nproductos, long productos) {
		 
		long precio = Nproductos * productos;
		
		
		return precio;
		
		// TODO Auto-generated method stub
	}

	protected String nombre(int prenda ) {
		
		String suma = "";
		if(prenda == 1000000) {
			suma = "Computadora";
		}else if(prenda == 75000) {
			suma = "Reloj(es)";
		}else if(prenda == 10000) {
			suma = "Camisas(s)";
		}else if(prenda == 35000) {
			suma = "Libro(s)";
		}else if(prenda == 40000) {
			suma = "Zapatos";
		}
		
		// TODO Auto-generated method stub
		return suma;
	}

	private String IP() {
		try {
			InetAddress a = InetAddress.getLocalHost();
			int i = a.toString().indexOf("/");
			String ip = a.toString().substring(i+1);
			return ip;
		} catch (Exception e) {
			String exception = "No se encontro al host ";
			return exception;
		}
	}

	private Long nTarjeta(long Numtarjeta) {
		long digitos = Numtarjeta % 10000;
		// TODO Auto-generated method stub
		return digitos;
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
