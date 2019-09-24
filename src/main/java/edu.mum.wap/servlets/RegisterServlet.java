package edu.mum.wap.servlets;

import com.google.gson.Gson;
import edu.mum.wap.models.Images;
import edu.mum.wap.models.User;
import edu.mum.wap.services.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.security.NoSuchAlgorithmException;
import java.util.Enumeration;

@WebServlet("/Register")
public class RegisterServlet extends HttpServlet {

    UserService userService;

    public RegisterServlet(){
        userService = new UserService();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/pages/sign-in.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PrintWriter out = resp.getWriter();
        String name = req.getParameter("name");
        String email = req.getParameter("email");
        String image = req.getParameter("image");
        String password = req.getParameter("password");
        String rePassword = req.getParameter("repeat-password");
        Gson gson = new Gson();
        boolean term = Boolean.parseBoolean(req.getParameter("term"));
//        Gson gson = new Gson();
        if (name == null || name.isEmpty() || !term || password == null || password.isEmpty() || rePassword == null ||
                    rePassword.isEmpty() || email == null || email.isEmpty()) {
            resp.setStatus(500);
            out.print("{description:'You need to fill all the required fields in the to register!'}");
            return;
        }
        if(!password.equals(rePassword)){
            out.print("{description:'You need to fill all the required fields in the to register!'}");
            return;
        }
        User user = new User();
        user.setUsername(name);
        user.setEmail(email);
        user.setPassword(password);
        if(image != null && !image.isEmpty()){
            Images img = new Images();
            img.setImageUrl(image);
            user.setImage(img);
        }
        try {
            userService.addUser(user);
        } catch (NoSuchAlgorithmException e) {
            resp.setStatus(500);
            out.print("{error:'Internal error occurred'}");
        }
        out.print(gson.toJson(user));
    }
}
