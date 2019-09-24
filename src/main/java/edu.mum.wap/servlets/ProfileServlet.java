package edu.mum.wap.servlets;
import edu.mum.wap.models.Post;
import edu.mum.wap.models.User;
import edu.mum.wap.services.PostService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Date;
import java.util.List;

@WebServlet("/Profile")
public class ProfileServlet extends HttpServlet {
    User me;
    PostService postSvc;

    public ProfileServlet (){
        me = new User();
        postSvc = new PostService();
    }

    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Post> myPosts =  postSvc.getMyPosts(me.getId());
        req.getSession().setAttribute("posts",myPosts);

        List<User> followings = me.getFollowersList();
        req.getSession().setAttribute("followings",followings);
        // retrun all posts and loop over them to create div "post-bar" for each post
    }

    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Post p = new Post();
        p.setDescription(req.getParameter("description"));
//        p.setImageId(Long.parseLong(req.getParameter("image")));
        p.setUserId(me);
        p.setActive(true);
        p.setCreationDate((new Date()));
        p.setVisible(true);
        //p.setId(0);

        //int result = postSvc.addPost(p);
        postSvc.addPost(p);

        // append new post to the old posts in the top of the page
    }}