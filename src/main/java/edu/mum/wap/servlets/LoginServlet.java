package edu.mum.wap.servlets;

import edu.mum.wap.models.User;
import edu.mum.wap.services.UserService;
import edu.mum.wap.utils.HashingHelper;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.security.NoSuchAlgorithmException;

@WebServlet(urlPatterns = {"/pages/login"})
public class LoginServlet extends HttpServlet {

    UserService userService = new UserService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getSession().removeAttribute("user");
        resp.sendRedirect("sign-in.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        //String username = req.getParameter("username");
        String email = req.getParameter("email");
        String password = req.getParameter("password");
        User userFromDb = userService.authenticateUser(email);
        try {
            String hashed = HashingHelper.HashPassword(password);
            if (userFromDb == null || !hashed.equals(userFromDb.getPassword())) {
                session.removeAttribute("user");
                session.setAttribute("error", "Username and/or password are invalid.");
//                session.invalidate();
                resp.sendRedirect(((HttpServletRequest) req).getContextPath() + "/pages/sign-in.jsp");
                return;
            }
        } catch (NoSuchAlgorithmException e) {
            session.removeAttribute("user");
            session.setAttribute("error", "An error occurred during the request.");
//            session.invalidate();
            resp.sendRedirect(((HttpServletRequest) req).getContextPath() + "/pages/sign-in.jsp");
            return;
        }
        System.out.println("login success info email: " + email + " & password: " + password);
        session.setAttribute("user", userFromDb);
        resp.sendRedirect("home.jsp");
    }
}
