/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import Entities.Client;
import java.io.IOException;
import java.io.PrintStream;
import java.io.PrintWriter;
import java.io.StringWriter;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author alaa
 */
//
@WebFilter(filterName = "LoggedinFilter" , urlPatterns = {"/EditAccount.jsp","/Account.jsp","/checkout.jsp","/checkout2.jsp" , "/checkout3-Extras.jsp","/checkout4-Offers.jsp" , "/checkout5-review.jsp" } )
public class LoggedinFilter implements Filter {

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        
        HttpServletRequest httpRequest = (HttpServletRequest) request;
        HttpServletResponse httpResponse = (HttpServletResponse) response;
        Client client = (Client) httpRequest.getSession().getAttribute("user");
        
        if( client != null){
            chain.doFilter(request, response);
        }
        else{
            httpResponse.sendRedirect("index.jsp");
           
        }
    }

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
    }

    @Override
    public void destroy() {
    }
    
 
}
