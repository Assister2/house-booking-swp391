package com.housebooking.filter;

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

import com.housebooking.Model.UserSession;

/**
 * Servlet Filter implementation class OwnerFilter
 */
@WebFilter(filterName = "LoginFilter", urlPatterns = {"/dashboard", "/manage", "/manage-bill", "/owner-post"})
public class OwnerFilter implements Filter {

    /**
     * Default constructor. 
     */
    public OwnerFilter() {
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
		HttpServletRequest req = (HttpServletRequest) request;
        HttpServletResponse res = (HttpServletResponse) response;
        
        HttpSession session = req.getSession();
        String loginURI = req.getContextPath() + "/home";

        boolean loggedIn = ((UserSession)session.getAttribute("usersession")) != null && 
                ((UserSession)session.getAttribute("usersession")).getUser().getRole().equals("Owner");
        //boolean loginRequest = req.getRequestURI().equals(loginURI);

        if (loggedIn) {
            chain.doFilter(request, response);
        } else {
            res.sendRedirect(loginURI);
        }
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}
