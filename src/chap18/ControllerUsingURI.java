package chap18;

import java.io.FileReader;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Properties;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ControllerUsingURI
 */
/* @WebServlet("*.do") */
public class ControllerUsingURI extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Map<String, CommandHandler> commandHandlerMap = new HashMap<String, CommandHandler>();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ControllerUsingURI() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    @Override
    public void init() throws ServletException {
    	String configFile = getInitParameter("configFile");
    	Properties prop = new Properties();
    	String configFilePath = getServletContext().getRealPath(configFile);
    	try (FileReader fis = new FileReader(configFilePath)) {
    		prop.load(fis);
    	} catch (Exception e) {
    		throw new ServletException(e);
    	}
    	
    	Iterator keyIter = prop.keySet().iterator();
    	while (keyIter.hasNext()) {
    		String command = (String) keyIter.next();
    		String handlerClassName = prop.getProperty(command);
    		
    		try {
    			Class<?> handlerClass = Class.forName(handlerClassName);
    			CommandHandler handlerInstance = 
    					(CommandHandler) handlerClass.newInstance();
    			commandHandlerMap.put(command, handlerInstance);
    		} catch (Exception e) {
    			throw new ServletException(e);
    		}
    	}
    }
    
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		process(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		process(request, response);
	}

	private void process(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String command = request.getRequestURI();
		if (command.indexOf(request.getContextPath())== 0) {
			command = command.substring(request.getContextPath().length());
		}
		
		CommandHandler handler = commandHandlerMap.get(command);
		
		if (handler == null) {
//			handler = new NullHandler();
		}

		String viewPage = null;
		try {
			viewPage = handler.process(request, response);
		} catch (Throwable e) {
			throw new ServletException(e);
		}
		
		if (viewPage != null) {
			RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
			dispatcher.forward(request, response);
		}
		
	}

}
