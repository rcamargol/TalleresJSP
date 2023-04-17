package co.edu.unbosque.model;

import java.io.IOException;
import java.net.InetAddress;
import java.text.SimpleDateFormat;
import java.util.Calendar;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ResponseServlet
 */
@WebServlet("/ResponseServlet")
public class ResponseServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ResponseServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String nextHTML = "/invoicepage.jsp";
		String fecha = new SimpleDateFormat("dd/MM/yyyy").format(Calendar.getInstance().getTime());
		String numtarjeta = "**** **** **** "+ request.getParameter("numerotarjeta").toString().substring(12);
		InetAddress dir = InetAddress.getLocalHost();
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(nextHTML);
		int preciototal = Integer.parseInt(request.getParameter("cantidad").toString()) * Integer.parseInt(request.getParameter("preciouni").toString());
		request.setAttribute("articulo", request.getParameter("articulos"));
		request.setAttribute("cantidad", request.getParameter("cantidad"));
		request.setAttribute("precio", request.getParameter("preciouni"));
		request.setAttribute("nombres", request.getParameter("nombres"));
		request.setAttribute("apellidos", request.getParameter("apellidos"));
		request.setAttribute("tarjeta", request.getParameter("tarjeta"));
		request.setAttribute("numtarjeta", numtarjeta);
		request.setAttribute("preciototal", preciototal);
		request.setAttribute("fecha", fecha);
		request.setAttribute("ip", dir.toString().split("/")[0]);
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
