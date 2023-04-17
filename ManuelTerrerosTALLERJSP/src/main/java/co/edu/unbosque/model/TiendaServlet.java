package co.edu.unbosque.model;

import java.beans.JavaBean;
import java.io.IOException;
import java.io.PrintWriter;
import java.net.InetAddress;
import java.util.Date;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.catalina.connector.Request;

/**
 * Servlet implementation class TiendaServlet
 */
@WebServlet("/TiendaServlet")
public class TiendaServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TiendaServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter writer = response.getWriter();
		Date date = new Date();
	
		String fecha = date.toLocaleString();
		String nomcli = request.getParameter("nombre");
		String apecli = request.getParameter("apellido");
		String tarj = request.getParameter("boton1");
		
		//String pre = request.getParameter("");
		//String total = Integer.parseInt(cant)*Integer.parseInt(precio)
		
		String art = request.getParameter("articulos") ;
		double precio = Double.parseDouble(request.getParameter("prec"));
		double cant = Double.parseDouble(request.getParameter("cant"));
		double total = cant*precio;
		String numtar = request.getParameter("numtar");
		InetAddress ip = InetAddress.getLocalHost();
		//writer.print(ip);
		request.setAttribute("nombre",nomcli);
		request.setAttribute("apellido", apecli);
		request.setAttribute("total",total);
		request.setAttribute("articulo", art);
		request.setAttribute("cant", cant);
		request.setAttribute("precio", precio);
		request.setAttribute("numtar", numtar);
		request.setAttribute("ip", ip);
		request.setAttribute("local", fecha);
		request.setAttribute("tarj", tarj);
		
		String html = "/ReciboCliente.jsp";
		RequestDispatcher despecho = getServletContext().getRequestDispatcher(html);
		despecho.forward(request, response);
		writer.close();
		
	}

}
