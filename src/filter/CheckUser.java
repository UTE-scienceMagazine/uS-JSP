package filter;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import model.Employee;
import model.User;

/**
 * Servlet Filter implementation class CheckUser
 */
@WebFilter("/post.html")
public class CheckUser implements Filter {

    /**
     * Default constructor. 
     */
    public CheckUser() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		HttpServletRequest req=(HttpServletRequest) request;
		HttpSession session = req.getSession();
		
		Integer roleId =(Integer)session.getAttribute("roleId");
		if(roleId==1){
			User user=(User)session.getAttribute("user");
		}else{
			Employee user=(Employee)session.getAttribute("user");
			chain.doFilter(request, response);	
			return;
		}
		
		req.getRequestDispatcher("signin.html").forward(request, response);
		
		
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}
