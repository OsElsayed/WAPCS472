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
        if (path.contains("/js/") || path.contains("/css/") || path.contains("/lib/") || path.contains("/fonts/")
                || path.contains("/images/") || path.contains("/vendor/")) {
            chain.doFilter(request, response); // Just continue chain.
            return;
        }

        if (user == null && (!request.getServletPath().contains("sign-in"))
                && (!request.getServletPath().contains("login"))){
            response.sendRedirect( ((HttpServletRequest)servletRequest).getContextPath() + "/pages/sign-in.jsp");
            return;
        }

        chain.doFilter(servletRequest, servletResponse);
    }
}