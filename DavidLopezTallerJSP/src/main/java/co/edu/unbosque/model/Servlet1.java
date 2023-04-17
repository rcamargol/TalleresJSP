package co.edu.unbosque.model;

import java.io.IOException;
import java.net.InetAddress;
import java.util.Calendar;
import java.util.GregorianCalendar;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.codec.binary.StringUtils;


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
		int factura = 0;
		String articulo = request.getParameter("articulos");
		String auxArticulo = "";
		String valor = request.getParameter("valor");
		String cantidad = request.getParameter("cantidad");
		String nombre = request.getParameter("nombres");
		String apellidos = request.getParameter("apellidos");
		String tarjeta = request.getParameter("tarjeta");
		String tipoTarjeta = "";
		String numTarjeta = request.getParameter("numerotarjeta");
		int a = Integer.parseInt(articulo);
		int c = Integer.parseInt(cantidad);
		int v = Integer.parseInt(valor);
		int t = Integer.parseInt(tarjeta);
		switch(a){
		case 1:
			factura = c*v;
			auxArticulo = "Zapatos";
			break;
		case 2:
			factura = c*v;
			auxArticulo = "Camisas";
			break;
		case 3:
			factura = c*v;
			auxArticulo = "Relojes";
			break;
		case 4:
			factura = c*v;
			auxArticulo = "Libros";
			break;
		case 5:
			factura = c*v;
			auxArticulo = "Computadores";
			break;
		}


		
		switch(t){
		case 1:
			tipoTarjeta = "Visa";
			break;
		case 2:
			tipoTarjeta = "Master Card";
			break;
		case 3:
			tipoTarjeta = "American Express";
			break;
		}

		char[] cadena = numTarjeta.toCharArray();
		String auxTarjeta = cadena[12]+""+cadena[13]+""+cadena[14]+""+cadena[15];
		
		Calendar ca = new GregorianCalendar();
		int dia = ca.get(Calendar.DAY_OF_MONTH);
		int mes = ca.get(Calendar.MONTH);
		int año = ca.get(Calendar.YEAR);
		String fecha = dia+"/"+mes+"/"+año;
		


		InetAddress ip = InetAddress.getLocalHost();
		
		String nextHTML = "/RespuestaTaller.jsp";
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(nextHTML);
		request.setAttribute("nombres", nombre);
		request.setAttribute("apellidos", apellidos);
		request.setAttribute("articulo", auxArticulo);
		request.setAttribute("cantidad", cantidad);
		request.setAttribute("factura", factura);
		request.setAttribute("tipoTarjeta", tipoTarjeta);
		request.setAttribute("numeroTarjeta", auxTarjeta);
		request.setAttribute("valor", valor);
		request.setAttribute("fecha", fecha);
		request.setAttribute("ip", ip);
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
