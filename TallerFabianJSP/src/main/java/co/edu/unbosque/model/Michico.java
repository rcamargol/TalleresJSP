package co.edu.unbosque.model;

import java.io.IOException;
import java.net.InetAddress;
import java.time.LocalDate;
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
@WebServlet("/Michico")
public class Michico extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Michico() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		String html = "/respuesta.jsp";
		
		String articulo = request.getParameter("articulo");
		
		switch(articulo) {
		case"1":
			articulo = "zapatos";
			break;
		case"2":
			articulo = "camisas";
			break;
		case"3":
			articulo = "relojes";
			break;
		case"4":
			articulo = "libros";
			break;
		case"5":
			articulo = "computadores";
			break;
		}
		
		String boton = request.getParameter("boton");
		switch(boton) {
		
		case"1":
			boton = "Visa";
			break;
		case"2":
			boton = "MasterCard";
			break;
		case"3":
			boton = "AmericanExpress";
			break;
		
		}
		String cantidad = request.getParameter("cantidad");
		String precio = request.getParameter("precio");
		String numTarjeta = request.getParameter("numTarjeta");
		String digitosFinal = numTarjeta.substring(numTarjeta.length() - 4);
		String noMostrar = "*".repeat(Math.max(0, numTarjeta.length() - 4));
  
        int mulCantidad = Integer.parseInt(cantidad);
        int mulPrecio = Integer.parseInt(precio);
        int precioTotal;
        
        precioTotal = mulCantidad * mulPrecio;
        
        String dia = DateTimeFormatter.ofPattern("dd/MM/yyyy").format(LocalDate.now());
		
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(html);
		request.setAttribute("articulo", articulo);
		request.setAttribute("cantidad", cantidad);
		request.setAttribute("precio", precio);
		request.setAttribute("boton", boton);
		request.setAttribute("numTarjeta", noMostrar + digitosFinal);
		request.setAttribute("precioTotal", precioTotal);
		request.setAttribute("dia", dia);
		request.setAttribute("ip", InetAddress.getLocalHost().getHostAddress());
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
