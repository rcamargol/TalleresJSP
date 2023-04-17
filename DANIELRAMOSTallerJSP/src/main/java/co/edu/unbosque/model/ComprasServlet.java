package co.edu.unbosque.model;

import java.io.IOException;
import java.net.InetAddress;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ComprasServlet
 */
@WebServlet("/ComprasServlet")
public class ComprasServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ComprasServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	
	public static String enmascararTC(String s) {
		
		if(s == null || 4>s.length())
			return s;
	return s.substring(s.length()-4);
	
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

		Calendar c = new GregorianCalendar();
		InetAddress address = InetAddress.getLocalHost();

		String ip = InetAddress.getLocalHost().getHostAddress();
		int month = c.get(Calendar.MONTH) + 1;
		int vt = 0;

		String nextHTML = "/factura.jsp";
		response.getWriter().append("Served at: ").append(request.getContextPath());
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(nextHTML);
		String productos = request.getParameter("products");
		String cantidad = request.getParameter("cantidad");
		String valorUnidad = request.getParameter("valor");
		String nombreUsu = request.getParameter("nombre");
		String apellidoUsu = request.getParameter("apellido");
		String tarjetas = request.getParameter("tarjeta");
		String numTarjeta = request.getParameter("numTarjeta");
		String confCard = request.getParameter("confNumTarjeta");
		
		int can = (int)Integer.parseInt(cantidad);
		int vu = (int)Integer.parseInt(valorUnidad);
		vt = can * vu;

		request.setAttribute("products", productos);
		request.setAttribute("cantidad", cantidad);
		request.setAttribute("valor", valorUnidad);
		request.setAttribute("valTotal", vt);
		request.setAttribute("nombre", nombreUsu);
		request.setAttribute("apellido", apellidoUsu);
		request.setAttribute("tarjeta", tarjetas);
		request.setAttribute("numTarjeta", enmascararTC(numTarjeta));
		request.setAttribute("confNumTarjeta", confCard);
		request.setAttribute("dia", Integer.toString(c.get(Calendar.DATE)));
		request.setAttribute("mes", month);
		request.setAttribute("año", Integer.toString(c.get(Calendar.YEAR)));
		request.setAttribute("ip", ip);

		dispatcher.forward(request, response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
