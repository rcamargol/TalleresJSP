package co.edu.unbosque.model;

import java.io.IOException;
import java.net.InetAddress;
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
		String articulo = request.getParameter("articulo");
		String cantidad = request.getParameter("cantidad");
		String precio = request.getParameter("precioArt");
		String clienteNombre = request.getParameter("clienteNombre");
		String clienteApellido = request.getParameter("clienteApellido");
		String tarjetaCredito = request.getParameter("tarjetacredito");
		String tarjetaNumero = request.getParameter("tarjetaNumero");
		
		Date date = new Date();
		InetAddress ip = InetAddress.getLocalHost();
		String fecha = date.toLocaleString();
		
		String nextHTML = "/mostrarDatos.jsp";
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(nextHTML);
		request.setAttribute("articulo", articulo);
		request.setAttribute("cantidad", cantidad);
		request.setAttribute("precio", precio);
		request.setAttribute("clienteNombre", clienteNombre);
		request.setAttribute("clienteApellido", clienteApellido);
		request.setAttribute("tarjetaCredito", tarjetaCredito);
		request.setAttribute("tarjetaNumero", tarjetaNumero);
		request.setAttribute("ip", ip);
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
