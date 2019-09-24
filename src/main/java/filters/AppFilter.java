package filters;

import edu.mum.wap.models.User;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebFilter(filterName = "AppFilter", urlPatterns = { "/*" })
public class AppFilter implements Filter {


    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain chain)
            throws ServletException, IOException {

        HttpServletRequest request = (HttpServletRequest) servletRequest;
        HttpServletResponse response = (HttpServletResponse) servletResponse;
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");
        String path = request.getRequestURI();
        if (path.startsWith("/js/") || path.startsWith("/css/") || path.startsWith("/lib/") || path.startsWith("/fonts/")
                || path.startsWith("/images/") || path.startsWith("/vendor/")) {
            chain.doFilter(request, response); // Just continue chain.
        } else {
            // Do your business stuff here for all paths other than /specialpath.
        }
        //if (request.getServletPath().contains("/sign-in")) {
       //     chain.doFilter(request, response);
            //return;
       // }

        if (user == null && (!request.getServletPath().contains("sign-in"))
                && (!request.getServletPath().contains("login"))){
            response.sendRedirect( ((HttpServletRequest)servletRequest).getContextPath() + "/pages/sign-in.jsp");
            return;
        }

        chain.doFilter(servletRequest, servletResponse);
    }
}