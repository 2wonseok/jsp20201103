package chap18.complex2;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Complex2Controller
 */
@WebServlet("/complex2")
public class Complex2Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Complex2Controller() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
  	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
  		processRequest(request, response);
  	}


  	/**
  	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
  	 */
  	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
  		processRequest(request, response);
  	}

  	private void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
  		String type = request.getParameter("type");
  		
  		Object resultObject = null;
  		ModelInterface model = null;
  		
  		if (type == null || type.equals("greeting")) {
  			model = new Model1();
  		} else if (type.equals("date")) {
  			model = new Model2();
  		} else {
  			resultObject = "Invalid Type";
  		}
  		
  		resultObject = model.execute();
  		
  		request.setAttribute("result", resultObject);
  		
  		RequestDispatcher dispatcher = request.getRequestDispatcher("/chap18/simpleView.jsp");
  		dispatcher.forward(request, response);
  		
  	}
  }
