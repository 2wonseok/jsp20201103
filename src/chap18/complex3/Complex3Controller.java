package chap18.complex3;

import java.io.FileReader;
import java.io.IOException;
import java.util.Properties;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import chap18.complex2.ModelInterface;



/**
 * Servlet implementation class Complex3Controller
 */
@WebServlet("/Complex3Controller")
public class Complex3Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Complex3Controller() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
  		processRequest(request, response);
  	}
    
  	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
  		processRequest(request, response);
  	}

  	private void processRequest(HttpServletRequest request, HttpServletResponse response)
  			throws ServletException, IOException {
  		// 2단계, 요청파악
  		String type = request.getParameter("type");

  		// 3단계, 요청한 기능을 수행한다.
  		Object resultObject = null;
  		ModelInterface model = null;

  		String path = "/WEB-INF/mapping/mapping.properties";
  		path = getServletContext().getRealPath(path);
  		FileReader fr = null;
  		String modelClassName = "chap18.complex2.Model1";
  		try {
  			fr = new FileReader(path);
  			Properties properties = new Properties();
  			properties.load(fr);
  			modelClassName = properties.getProperty(type);
  		} catch (Exception e) {
  			e.printStackTrace();
  		}
  		try {
  			Class c = Class.forName(modelClassName);
  			model = (ModelInterface) c.newInstance();
  		} catch (Exception e) {
  			e.printStackTrace();
  		}
  		
  		resultObject = model.execute();

  		// 4단계, request나 session에 처리 결과를 저장
  		request.setAttribute("result", resultObject);

  		// 5단계, RequestDispatcher를 사용하여 알맞은 뷰로 포워딩
  		RequestDispatcher dispatcher = request.getRequestDispatcher("/chap18/simpleView.jsp");
  		dispatcher.forward(request, response);
  	}
  }
