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
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet Filter implementation class CheckLogin
 */
@WebFilter("/*")
public class CheckLogin implements Filter {

    /**
     * Default constructor. 
     */
    public CheckLogin() {
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
		
		if(session.getAttribute("user")!=null){
			chain.doFilter(request, response);
			return;
		}
		
		String url= req.getRequestURI();
		if(url.endsWith("/")||url.endsWith(".css")||url.endsWith(".js")
				||url.endsWith(".png")||url.endsWith(".jpg")
				||url.endsWith(".ttf")
				||url.endsWith(".pdf")
				||url.endsWith("/home.html")
				||url.endsWith(".mp4")
				||url.endsWith("/article.html")
				||url.endsWith("/volume.html")
				||url.endsWith("/checkemail.html")
				||url.endsWith("/category.html")
				||url.endsWith("/find.html")
				||url.endsWith("/_find-content.jsp")){
			
			chain.doFilter(request, response);
			return;
		}
		
		req.setAttribute("uri", url);
		
		req.getRequestDispatcher("signin.html").forward(request, response);
	}

	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}
