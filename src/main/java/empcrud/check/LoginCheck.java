package empcrud.check;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


/**
 * Servlet implementation class LoginCheck
 */

public class LoginCheck extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginCheck() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		java.io.PrintWriter out= response.getWriter();
		String email,password;
		email= request.getParameter("email");
		password= request.getParameter("password");
		System.out.print(email);
		System.out.print(password);
        CheckDao dao = new  CheckDao();
        if(dao.check(email,password))
        {
        	HttpSession session= request.getSession();
        	session.setAttribute("email", email);
        	response.sendRedirect("index");
        	
        	
        }
        else
        {
          out.print("your crededntials do not match");
        }
	}
	}


