package co.edu.unbosque.model;

import java.io.IOException;
import java.net.InetAddress;
import java.text.SimpleDateFormat;
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
		String nextHTML = "/response.jsp";
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(nextHTML);
		request.setAttribute("Articulo", request.getParameter("art"));
		request.setAttribute("Cantidad", request.getParameter("cant"));
		request.setAttribute("Precio", request.getParameter("precio"));
		request.setAttribute("Total", Integer.parseInt(request.getParameter("precio"))*Integer.parseInt(request.getParameter("cant")));
		request.setAttribute("Nombre", request.getParameter("nombre"));
		request.setAttribute("Apellido", request.getParameter("apellido"));
		request.setAttribute("TarjetaSel", request.getParameter("tarjeta"));
		request.setAttribute("TarjetaNum","************" + request.getParameter("notarj").substring(12));
		SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
		request.setAttribute("fecha", sdf.format(new Date()));
		String ipClient= request.getHeader("Client-IP");
		InetAddress address = InetAddress.getByName(ipClient); 
		String host = address.toString();
		request.setAttribute("ClientIP", host);
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
