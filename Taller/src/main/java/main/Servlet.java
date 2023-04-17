package main;

import java.io.IOException;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.text.html.parser.Parser;

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
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		String nombre_cliente =request.getParameter("nombre"); 
		String apellido = request.getParameter("apellido");
		int cantidad = Integer.parseInt(request.getParameter("cantidad"));
		String numero_tarjeta = request.getParameter("numero_tarjeta");
		String numero_confirmacion = request.getParameter("numero_confirmacion");
		String producto = request.getParameter("producto");
		double precio_unidad = Double.parseDouble(request.getParameter("precio_unidad"));
		double precio_total = precio_unidad * cantidad;
		String tarjeta =request.getParameter("opcion");
		String tarjeta_visa = "", tarjeta_master = "", tarjeta_american ="";
		
		if(tarjeta != null) {
			if( tarjeta_visa.equals("visa")) {
				tarjeta = "visa";
			}
		}
		else if (tarjeta_master.equals("master")) {
			tarjeta = "master";
		}
		else if(tarjeta_american.equals("american")) {
			tarjeta = "american";
		}
		String dir_ip = request.getRemoteAddr();
		
		Date fecha = new Date();
		String nextHTML = "/Datos.jsp";
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(nextHTML);
		
		request.setAttribute("nombre", nombre_cliente);
		request.setAttribute("apellido", apellido);
		request.setAttribute("cantidad", cantidad);
		request.setAttribute("numero_tarjeta", numero_tarjeta);
		request.setAttribute("numero_confir", numero_confirmacion);
		request.setAttribute("tarjeta", tarjeta);
		request.setAttribute("producto",  producto );
		request.setAttribute("precio_total", precio_total);
		request.setAttribute("precio_unidad", precio_unidad);
		request.setAttribute("ip", dir_ip);
		request.setAttribute("fecha", fecha);

		
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
