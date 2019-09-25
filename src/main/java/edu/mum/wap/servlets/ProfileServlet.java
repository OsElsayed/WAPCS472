package edu.mum.wap.servlets;

import edu.mum.wap.models.Images;
import edu.mum.wap.models.Post;
import edu.mum.wap.models.User;
import edu.mum.wap.services.ImageService;
import edu.mum.wap.services.PostService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;
import java.util.List;

@WebServlet(urlPatterns = {"/pages/Profile"})
public class ProfileServlet extends HttpServlet {
    User me;
    PostService postSvc;
    ImageService imageSvc;

    public ProfileServlet() {
        me = new User();
        postSvc = new PostService();
        imageSvc = new ImageService();
    }

    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        me = (User) (req.getSession().getAttribute("user"));
        long userId = me.getId();
        List<Post> myPosts = postSvc.getMyPosts(userId);
        Collections.reverse(myPosts);
        req.getSession().setAttribute("posts", myPosts);

        List<User> followings = me.getFollowersList();
        req.getSession().setAttribute("followings", followings);

        req.getRequestDispatcher("user-profile.jsp").forward(req, resp);
    }

    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        me = (User) (req.getSession().getAttribute("user"));
        Post p = new Post();
        p.setDescription(req.getParameter("comment"));
        if (req.getParameter("photo") != null)
            p.setImages(addImage(req));
        p.setUserId(me.getId());
        p.setActive(true);
        p.setCreationDate((new Date()));
        p.setVisible(true);

        postSvc.addPost(p);
        doGet(req, resp);
    }

    private Images addImage(HttpServletRequest req) {
        Images image = new Images();
        image.setImageUrl(req.getParameter("photo"));
        imageSvc.addImage(image);
        return image;
    }
}