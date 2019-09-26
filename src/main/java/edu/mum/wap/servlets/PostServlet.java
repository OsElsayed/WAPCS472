package edu.mum.wap.servlets;

import com.google.gson.Gson;
import edu.mum.wap.models.Advertisement;
import edu.mum.wap.models.Post;
import edu.mum.wap.models.User;
import edu.mum.wap.services.AdService;
import edu.mum.wap.services.PostService;
import edu.mum.wap.services.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.stream.Collectors;

@WebServlet(urlPatterns = "/pages/Posts")
public class PostServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException
    {
        Integer getdata = 3;
        String page = req.getParameter("nu");
        int pageNum = 0;
        if(page != null){
            pageNum = Integer.valueOf(page);
        }
        List<Post> posts = new ArrayList();
        PostService postService = new PostService();
        UserService userService = new UserService();
        AdService adService = new AdService();
        posts = postService.findAll();
        List<Post> filtered = new ArrayList<>();

        HttpSession session = req.getSession();
        User me = (User) session.getAttribute("user");

        List<User> allusers = new ArrayList<>();
        allusers = userService.findAll();
        for (User u : allusers) {
            me.getFollowersList().forEach(f -> {
                if (f.getId() == u.getId())
                    u.setFollowing(true);
            });
        }
        if(!me.isAdmin()) {
            filtered = posts.stream().filter(p -> me.getFollowersList().stream().anyMatch(u -> u.getId() == p.getUserId()) || me.getId() == p.getUserId()).collect(Collectors.toList());
        }else{
            filtered = posts;
        }
        filtered = filtered.stream().filter(p -> p.isVisible()).sorted((p1, p2) -> p2.getCreationDate().compareTo(p1.getCreationDate())).skip(pageNum*getdata).limit(getdata).collect(Collectors.toList());

        for (Post post:filtered) {
            if (post.isVisible())
                post.setVisibility(1);
            if (post.isActive())
                post.setActivity(1);
            post.setUser(userService.findUser(post.getUserId()));
        }

       Gson gson = new Gson();
        PrintWriter out = resp.getWriter();
        out.print(gson.toJson(filtered));
    }
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException
    {

    }
}
