package co.edu.unbosque.modelo;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ServletCompras
 */
@WebServlet("/ServletCompras")
public class ServletCompras extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ServletCompras() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String nextHTML = "/respuestaformulario.jsp";

		String articulo = request.getParameter("art");
		String cantidads = request.getParameter("cantidad");
		int cantidad = Integer.parseInt(cantidads);
		String ppus = request.getParameter("ppu");
		int ppu = Integer.parseInt(ppus);
		String nombre = request.getParameter("nombre");
		String apellido = request.getParameter("apellido");
		String tipotarjeta = request.getParameter("tipotarjeta");
		String numero = request.getParameter("numero");

		int valor = cantidad * ppu;

		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(nextHTML);
		request.setAttribute("articulo", request.getParameter("art"));
		request.setAttribute("cantidad", request.getParameter("cantidad"));
		request.setAttribute("nombre", request.getParameter("nombre"));
		request.setAttribute("apellido", request.getParameter("apellido"));
		request.setAttribute("ppu", request.getParameter("ppu"));
		request.setAttribute("tipotarjeta", request.getParameter("tipotarjeta"));
		request.setAttribute("numero", request.getParameter("numero"));
		request.setAttribute("valor", valor);

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
