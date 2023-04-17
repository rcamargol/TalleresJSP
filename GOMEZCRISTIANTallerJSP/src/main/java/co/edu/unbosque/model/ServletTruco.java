package co.edu.unbosque.model;

import java.io.IOException;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ServletTruco
 */
@WebServlet("/ServletTruco")
public class ServletTruco extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Metodos met;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ServletTruco() {
		super();
		met = new Metodos();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	@SuppressWarnings("deprecation")
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		String articulo = request.getParameter("art");
		int cantidad = Integer.parseInt(request.getParameter("cantidad"));
		int precioU = Integer.parseInt(request.getParameter("preciocu"));

		String nombres = request.getParameter("nombres");
		String apellidos = request.getParameter("apellidos");
		String tarjeta = request.getParameter("tarjeta");
		String numtar = request.getParameter("numtar");
		
		Date currDate = new Date();
		SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
		
		String date = dateFormat.format(currDate);

		try {
			String ip = InetAddress.getLocalHost().getHostAddress();
			request.setAttribute("ip", ip);
		} catch (UnknownHostException e) {
			System.out.println("No fue posible encontrar el puerto :((( triste");
		}

		String nextHTML = "/respuesta.jsp";
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(nextHTML);

		request.setAttribute("nombre", "Usuario: " + nombres + " " + apellidos);
		request.setAttribute("preciounidad", met.totalCompra(cantidad, precioU));
		request.setAttribute("valorunidad", "El precio por unidad fue de: $" + precioU);
		request.setAttribute("tarjeta",
				"La compra fue realizada con la tarjeta de crédito número: " + met.tarjetasMetodo(numtar));
		request.setAttribute("tipotar", met.tipoTarjeta(tarjeta));
		request.setAttribute("date", date);
		request.setAttribute("art", articulo);
		request.setAttribute("cant", cantidad);
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
