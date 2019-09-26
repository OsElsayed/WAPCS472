package edu.mum.wap.servlets;

import edu.mum.wap.models.Images;
import edu.mum.wap.models.User;
import edu.mum.wap.services.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.security.NoSuchAlgorithmException;

@WebServlet(urlPatterns = "/pages/ProfileUpdate")
public class ProfileUpdateServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String userName = req.getParameter("username");
        String imageUrl = req.getParameter("imageUrl");
        User me = (User)req.getSession().getAttribute("user");
        UserService userSvc = new UserService();
        me.setUsername(userName);
        if(!imageUrl.equals(me.getImage().getImageUrl())){
            Images images = new Images();
            images.setImageUrl(imageUrl);
            me.setImage(images);
        }
        me = userSvc.updateUser(me);
        req.getSession().setAttribute("user",me);
        resp.sendRedirect("Profile");
    }
}
