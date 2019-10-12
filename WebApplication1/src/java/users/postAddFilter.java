/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package users;
import java.io.IOException;
import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
//import javax.servlet.FilterConfig;
//import javax.servlet.ServletException;
//import javax.servlet.ServletRequest;
//import javax.servlet.ServletResponse;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author IUT
 */
public class postAddFilter implements Filter {
    
    
private FilterConfig filterConfig;
public void init(FilterConfig filterConfig) throws ServletException {
    System.out.println("Filter initialized");

this.filterConfig = filterConfig;
}
public void destroy() {
this.filterConfig = null;
}

public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
throws IOException, ServletException {
HttpSession session = ((HttpServletRequest) request).getSession();

      if(session.getAttribute("email")== null )
      {   
          
          session.setAttribute("notification", "Login to have access");
          RequestDispatcher rd = request.getRequestDispatcher("userLogin.jsp");
          rd.forward(request, response);
       
      }
      
      
      chain.doFilter(request, response);
       

}


    
}
