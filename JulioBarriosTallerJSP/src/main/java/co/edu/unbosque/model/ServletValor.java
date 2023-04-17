package co.edu.unbosque.model;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ServletValor
 */
@WebServlet("/ServletValor")
public class ServletValor extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletValor() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String nextHtml = "/RespuestaValor.jsp";
		RequestDispatcher dispatcher=getServletContext().getRequestDispatcher(nextHtml);
		String numero1=request.getParameter("Numero1");
		String numero2=request.getParameter("Numero2");
		int numeroA=Integer.parseInt(numero1);
		int numeroB=Integer.parseInt(numero2);
		
;		
		request.setAttribute("Numero1", numero1);
		request.setAttribute("Numero2", numero2);
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
