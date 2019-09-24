package edu.mum.wap.servlets;

import edu.mum.wap.models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;

@WebServlet("/Register")
public class RegisterServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/pages/sign-in.html").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PrintWriter out = resp.getWriter();
        String name = req.getParameter("name");
        String country = req.getParameter("country");
        String password = req.getParameter("password");
        String rePassword = req.getParameter("repeat-password");
        boolean term = Boolean.valueOf(req.getParameter("term"));
//        Gson gson = new Gson();
        if (name == null || name.isEmpty() || !term || password == null || password.isEmpty() || rePassword == null ||
                    rePassword.isEmpty() || country == null || country.isEmpty()) {
            resp.setStatus(500);
            out.print("{description:'You need to fill all the required fields in the to register!'}");
            return;
        }
        if(!password.equals(rePassword)){
            out.print("{description:'You need to fill all the required fields in the to register!'}");
            return;
        }
        User user = new User();
       /* _userService.Create(user);
        out.print(gson.toJson(user));*/
    }
}
