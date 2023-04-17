package co.edu.unbosque.model;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.InetAddress;
import java.time.LocalDate;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Redirectorio
 */
@WebServlet("/Redirectorio")
public class Redirectorio extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Redirectorio() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		LocalDate fechaactual = LocalDate.now();
		String[] fechadiv = fechaactual.toString().split("-");
		InetAddress IPcliente = InetAddress.getLocalHost();
		
		String articulo = request.getParameter("arti");
		int cantidad = Integer.parseInt(request.getParameter("cantidad"));
		double precio = Integer.parseInt(request.getParameter("precioxunidad"));
		String nombre = request.getParameter("nombrecliente");
		String apellido = request.getParameter("apellidocliente");
		String tcredito = request.getParameter("tipotarjeta");
		String ntarjeta = request.getParameter("ntarjeta");
		String[] ntarjetadiv = ntarjeta.toString().split("-");
		String confirtcredito = request.getParameter("confirmartarjeta");
		PrintWriter writer = response.getWriter();
		
		
		writer.println("<p>Señor usuario: "+"<strong>"+ nombre +"</strong>"+" "+"<strong>"+ apellido +"</strong>"+".</p>");
		writer.println("<p>Su compra fue realizada satisfactoriamente por un valor de <strong>$"+Math.round(precio*cantidad)+"</strong>.  Correspondiente a <strong>"+cantidad+"</strong> <strong>"+articulo+"</strong>.</p>");
		writer.println("<p>El precio por unidad fue:  $ <strong>"+precio+"</strong>.</p>");
		writer.println("<p>La compra fue realizada con la tarjeta de credito número: "+" **** **** **** "+ntarjetadiv[3]+" de la franquicia <strong>"+tcredito+"</strong>. Fecha de compra: <strong>"+fechadiv[2]+"/"+fechadiv[1]+"/"+fechadiv[0]+"</strong>.</p>");
		writer.println("<p>Dirrecion IP: <strong>"+IPcliente+"</strong>.</p>");
		
		writer.close();
		
		
//		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
