package edu.mum.wap.servlets;

import edu.mum.wap.models.Images;
import edu.mum.wap.models.Post;
import edu.mum.wap.models.User;
import edu.mum.wap.services.ImageService;
import edu.mum.wap.services.PostService;
import edu.mum.wap.services.UserService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.*;

@MultipartConfig
@WebServlet("/pages/Timeline")
public class TimelineServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        List<Post> posts = (List<Post>) session.getAttribute("posts");
        String comment = req.getParameter("comment");
        String photo = req.getParameter("photo");
        User user = (User)session.getAttribute("user");

        //Instantiating Objects
        PostService postService = new PostService();
        Post post = new Post();
        post.setDescription(comment);
        post.setActive(true);
        post.setActivity(1);
        post.setVisible(true);
        post.setVisibility(1);
        post.setUserId(user.getId());
        Date today = Calendar.getInstance().getTime();
        post.setCreationDate(today);
        if(photo != ""){
            ImageService imageService = new ImageService();
            Images image = new Images();
            image.setImageUrl(photo);
            post.setImages(image);
            imageService.addImage(image);
        }
        postService.addPost(post);
        posts.add(post);
        Collections.reverse(posts);
        session.setAttribute("posts",posts);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Post> posts = new ArrayList();
        PostService postService = new PostService();
        UserService userService = new UserService();
        posts = postService.findAll();

        for (Post post:posts) {
            if (post.isVisible())
                post.setVisibility(1);
            if (post.isActive())
                post.setActivity(1);
            post.setUser(userService.findUser(post.getUserId()));
        }
        Collections.reverse(posts);
        HttpSession session = req.getSession();
        session.setAttribute("posts",posts);
        RequestDispatcher rd = req.getRequestDispatcher("home.jsp");
        rd.forward(req,resp);
    }
}
