package edu.mum.wap.servlets;

import com.google.gson.Gson;
import edu.mum.wap.models.User;
import edu.mum.wap.services.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@WebServlet(urlPatterns = {"/pages/users"})
public class UserServlet extends HttpServlet {

    UserService userService;

    public UserServlet(){
        userService = new UserService();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        User current = (User) session.getAttribute("user");
        if(!current.isAdmin()){
            session.setAttribute("error","This user does not have permission to view this page.");
            resp.sendRedirect("home.jsp");
            return;
        }
        List<User> list = userService.findAll();
        req.setAttribute("users",list);
        req.getRequestDispatcher("profiles.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        PrintWriter out = resp.getWriter();
        User user = new User();
        User current = (User) session.getAttribute("user");
        if(!current.isAdmin()){
            resp.setStatus(500);
            out.print("User not allowed to update users!");
            return;
        }
        long id = Long.valueOf(req.getParameter("id"));
        String active = req.getParameter("enable");
        String admin = req.getParameter("admin");
        user = userService.findUser(id);
        if(active != null){
            user.setActive((Boolean.parseBoolean(active)));
        }
        else if(admin != null){
            user.setAdmin((Boolean.parseBoolean(admin)));
        }
        user = userService.updateUser(user);
        out.print(new Gson().toJson(user));
    }
}
