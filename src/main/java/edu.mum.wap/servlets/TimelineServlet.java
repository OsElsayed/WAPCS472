package edu.mum.wap.servlets;

import com.google.gson.Gson;
import edu.mum.wap.models.Images;
import edu.mum.wap.models.Post;
import edu.mum.wap.services.ImageService;
import edu.mum.wap.services.PostService;

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

        //Instantiating Objects
        PostService postService = new PostService();
        Post post = new Post();
        post.setDescription(comment);
        post.setActive(true);
        post.setVisible(true);
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
        posts = postService.findAll();
        Collections.reverse(posts);
        HttpSession session = req.getSession();
        session.setAttribute("posts",posts);
        RequestDispatcher rd = req.getRequestDispatcher("home.jsp");
        rd.forward(req,resp);
    }
}
