package edu.mum.wap.servlets;

import edu.mum.wap.models.User;
import edu.mum.wap.services.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(urlPatterns = {"/pages/login"})
public class LoginServlet extends HttpServlet {

    UserService userService = new UserService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getSession().invalidate();
        resp.sendRedirect("sign-in.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        String username = req.getParameter("username");
        String password = req.getParameter("password");
        User userFromDb = userService.authenticateUser(username);
        if (userFromDb == null || !userFromDb.getPassword().equals(password)) {
            session.removeAttribute("user");
            session.invalidate();
            resp.sendRedirect(((HttpServletRequest) req).getContextPath() + "/pages/sign-in.jsp");
            return;
        }
        System.out.println("login success info username: " + username + " & password: " + password);
        session.setAttribute("user", userFromDb);
        resp.sendRedirect("home.html");
    }
}
