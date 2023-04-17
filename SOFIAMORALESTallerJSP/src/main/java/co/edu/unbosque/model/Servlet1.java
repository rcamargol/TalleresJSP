package co.edu.unbosque.model;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.RequestDispatcher;
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

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Servlet1() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		PrintWriter salida = response.getWriter();
		double cantidadNew = 0;
		double cantidad = Double.parseDouble(request.getParameter("Cantidad"));
		double precio = Double.parseDouble(request.getParameter("Precio"));
		cantidadNew = cantidad*precio;



		String articulo = request.getParameter("articulo");
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

		//lo de tarjeta 
		String tipoTarjeta = request.getParameter("tarjeta"); 

		if(tipoTarjeta != null) {
			if(tipoTarjeta.equals("visa")) { //en el html diferencie si es visa
				tipoTarjeta = "VISA";
			}
			else if (tipoTarjeta.equals("mastercard")) {
				tipoTarjeta = "master";
			} else if (tipoTarjeta.equals("american")) {
				tipoTarjeta = "American";
			}
		}


		String numeroT = request.getParameter("Numero");
		String confNumTarjeta = request.getParameter("ConfNumero");
		if(!numeroT.equals(confNumTarjeta)){ // no iguales
			numeroT  = "La tarjeta fue invalida";
		}
		else{
			numeroT = numeroT;
		}

		String tarjetaCuatroDigitos ="****-****-****-"+numeroT.substring(numeroT.length()-4);

		String nombre = request.getParameter("Nombre");
		String apellido = request.getParameter("Apellido");

		Date fecha = new Date();
		//	String ipAddress = request.getRemoteAddr();
		String ipAddress = request.getRemoteAddr();

		String html = "/Respuesta.jsp";
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(html);
		request.setAttribute("cantidadNew", cantidadNew);
		request.setAttribute("precio", precio);
		request.setAttribute("articulo", articulo);
		request.setAttribute("tipoTarjeta", tipoTarjeta);
		request.setAttribute("numeroT", tarjetaCuatroDigitos);
		request.setAttribute("fecha",fecha);
		request.setAttribute("nombre", nombre);
		request.setAttribute("apellido", apellido);
		request.setAttribute("ipAddress", ipAddress); //la ip va a aparecer 0.0.0.0.0.0:1 donde dice que se ejecuta en la misma maquina

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
