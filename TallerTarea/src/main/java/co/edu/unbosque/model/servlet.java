package co.edu.unbosque.model;

import java.io.IOException;
import java.net.InetAddress;
import java.time.LocalDate;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class servlet
 */
@WebServlet("/servlet")
public class servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		String html = "/resultado.jsp";
		
		String articulo = request.getParameter("articulo");
		
		String cantidad = request.getParameter("cantidad");
		String precio = request.getParameter("precio");
		String apellido = request.getParameter("apellido");
		String nombre = request.getParameter("nombre");
		String tarjeta = request.getParameter("tarjeta");
		String numTarjeta = request.getParameter("numTarjeta");
		String digitos = numTarjeta.substring(numTarjeta.length()-4);
		String tarjeta2 = "";
        if (numTarjeta.length() > 4) {
			for (int i = 0; i < numTarjeta.length() - 4; i++) {
				tarjeta2+= "*";
			}
		}
		switch (articulo) {
		case "1": 
			articulo = "Zapatos";
			break;
		case "2":
			articulo = "Camisas";
			break;
		case "3": 
			articulo = "Relojes";
			break;
		case "4":
			articulo = "Libros";
			break;
		case "5": 
			articulo = "Computadores";
			break;
		}
		int cantidad1 = 0;
		int precio1 = 0;
		int precioTotal = 0;
		String sFinal = "";
		boolean cantidad2 = true;
		boolean precio2 = true;
		
		LocalDate fecha = LocalDate.now();
		
		try {
			cantidad1 = Integer.parseInt(cantidad);
		} catch (NumberFormatException e) {
			cantidad2 = false;
		}
		try {
			precio1 = Integer.parseInt(precio);
		} catch (NumberFormatException e) {
			precio2 = false;
		}
		if(precio2 && cantidad2) {
			precioTotal = cantidad1 * precio1;
			sFinal = precioTotal + "";
		}else {
			sFinal = "No sse puede operar";
			precio = "Null";
			cantidad = "Null";
		}
		
		RequestDispatcher d = getServletContext().getRequestDispatcher(html);
		request.setAttribute("articulo", articulo);
		request.setAttribute("cantidad", cantidad);
		request.setAttribute("precio", precio);
		request.setAttribute("sFinal", sFinal);
		request.setAttribute("apellido", apellido);
		request.setAttribute("nombre", nombre);
		request.setAttribute("tarjeta", tarjeta);
		request.setAttribute("numTarjeta", tarjeta2+digitos);
		request.setAttribute("ip", InetAddress.getLocalHost().getHostAddress());
		request.setAttribute("fecha", fecha);
		d.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
