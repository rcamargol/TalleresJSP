package co.edu.unbosque.model;

import java.io.IOException;
import java.net.InetAddress;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Receptor3
 */
@WebServlet("/Receptor3")
public class Receptor3 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Receptor3() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String nextHTML = "/respuesta3_1.jsp";
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(nextHTML);
		String nombre = request.getParameter("nombres");
		String apellido = request.getParameter("apellidos");
		String producto = request.getParameter("articulo");

		int cantidad = Integer.parseInt(request.getParameter("cantidad"));
		int precioUnidad = Integer.parseInt(request.getParameter("precioUnidad"));
		int precioTotal = cantidad * precioUnidad;
		String tarjeta = request.getParameter("tarjeta");
		String numeroTarjeta = request.getParameter("nTarjeta");
		InetAddress host = InetAddress.getLocalHost();
		String num=numeroTarjeta.substring(numeroTarjeta.length()-4);

		String fecha = (new java.util.Date().toLocaleString());

		request.setAttribute("nombre", nombre);
		request.setAttribute("apellido", apellido);
		request.setAttribute("producto", producto);
		request.setAttribute("cantidad", cantidad);
		request.setAttribute("precioUnidad", precioUnidad);
		request.setAttribute("precioTotal", precioTotal);
		request.setAttribute("tarjeta", tarjeta);
		request.setAttribute("numeroTarjeta", num);
		request.setAttribute("host", host);
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
