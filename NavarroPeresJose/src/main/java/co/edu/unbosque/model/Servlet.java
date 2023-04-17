package co.edu.unbosque.model;

import java.io.IOException;
import java.net.InetAddress;
import java.net.UnknownHostException;
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
	public String articulo, numeroTarjeta, repetirTarjeta;
	public int cantidadArt;
	public double precioProducto;
	public double precioTotal;
	public String nombre;
	public String apellido;
	public String tarjetaVisa, tarjetaAmerican, tarjetaMaster, tarjeta;


	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Servlet() {
		super();
		this.repetirTarjeta = "";
		this.numeroTarjeta = "";
		this.articulo = "";
		this.nombre = "";
		this.apellido = "";
		this.cantidadArt = 0;
		this.precioProducto = 0;
		this.precioTotal = 0;
		this.tarjetaVisa = "";
		this.tarjetaAmerican = "";
		this.tarjetaMaster = "";
		this.tarjeta = "";
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		articulo = request.getParameter("articulo");
		//Seleccionar el tipo de articulo


		if(articulo.equals("1")) {
			articulo =	"Zapatos";
		}
		else if(articulo.equals("2")) {
			articulo = "Camisa";
		}
		else if(articulo.equals("3")) {
			articulo = "Reloj";
		}
		else if(articulo.equals("4")) {
			articulo = "Libro";
		}
		else if(articulo.equals("5")) {
			articulo = "Computador";
		}

		//Logica para multiplicar el valor por cantidad 

		cantidadArt = Integer.parseInt(request.getParameter("cantidadArt"));
		precioProducto = Double.parseDouble(request.getParameter("precioProducto"));

		precioTotal = cantidadArt * precioProducto;


		//halar el nombre y appellido

		nombre = request.getParameter("nombre");
		apellido = request.getParameter("apellido");

		//Seleccionar tipo de tarjeta

		tarjeta = request.getParameter("tarjeta");


		if( tarjetaVisa != null) {
			if(tarjetaVisa.equals("visa")) {
				tarjeta = "visa";
			}
		}
		else if(tarjetaMaster.equals("master")) {
			tarjeta = "master";
		}
		else if(tarjetaAmerican.equals("american")) {
			tarjeta = "american";
		}
		numeroTarjeta = request.getParameter("numeroTarjeta");
		repetirTarjeta = request.getParameter("repetirTarjeta");

		Date fecha = new Date();
		request.setAttribute("fecha",fecha);

		String ipAddress = request.getRemoteAddr();

		String html = "/respuesta.jsp";
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(html);
		request.setAttribute("ipAddress", ipAddress);
		request.setAttribute("articulo", articulo);
		request.setAttribute("cantidadArt", cantidadArt);
		request.setAttribute("precioProducto", precioProducto);
		request.setAttribute("precioTotal", precioTotal);
		request.setAttribute("nombre", nombre);
		request.setAttribute("apellido", apellido);
		request.setAttribute("tarjeta", tarjeta);
		request.setAttribute("fecha",fecha);
		request.setAttribute("numeroTarjeta", numeroTarjeta);
		request.setAttribute("repetirTarjeta", repetirTarjeta);
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
