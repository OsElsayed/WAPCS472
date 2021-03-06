package edu.mum.wap.servlets;

import edu.mum.wap.models.Advertisement;
import edu.mum.wap.models.Images;
import edu.mum.wap.models.Post;
import edu.mum.wap.models.User;
import edu.mum.wap.services.AdService;
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
import java.util.stream.Collectors;

@MultipartConfig
@WebServlet("/pages/Timeline")
public class TimelineServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        List<Post> posts = (List<Post>) session.getAttribute("posts");
        String comment = req.getParameter("comment");
        String photo = req.getParameter("photo");
        User user = (User) session.getAttribute("user");

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
        if (photo != "") {
            ImageService imageService = new ImageService();
            Images image = new Images();
            image.setImageUrl(photo);
            post.setImages(image);
            imageService.addImage(image);
        }
        postService.addPost(post);
        posts.add(post);
        Collections.reverse(posts);
        session.setAttribute("posts", posts);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Integer getdata = 3;

        List<Post> posts = new ArrayList();
        PostService postService = new PostService();
        UserService userService = new UserService();
        AdService adService = new AdService();
        posts = postService.findAll();
        List<Post> filtered = new ArrayList<>();
        List<User> allusers = new ArrayList<>();
        allusers = userService.findAll();
        HttpSession session = req.getSession();
        User me = (User) session.getAttribute("user");
        for (User u : allusers) {
            me.getFollowersList().forEach(f -> {
                if (f.getId() == u.getId())
                    u.setFollowing(true);
            });
        }
        if(!me.isAdmin()) {
            filtered = posts.stream().filter(p -> me.getFollowersList().size() > 0 && me.getFollowersList().stream().anyMatch(u -> u.getId() == p.getUserId()) || me.getId() == p.getUserId()).collect(Collectors.toList());
        }else{
            filtered = posts;
        }
        filtered = filtered.stream().filter(p -> p.isVisible()).sorted((p1, p2) -> p2.getCreationDate().compareTo(p1.getCreationDate())).limit(getdata).collect(Collectors.toList());
        for (Post post : filtered) {
            if (post.isVisible())
                post.setVisibility(1);
            if (post.isActive())
                post.setActivity(1);
            post.setUser(userService.findUser(post.getUserId()));
        }




        List<Advertisement> advertisements = adService.findAll();
        session.setAttribute("posts", filtered);
        session.setAttribute("allusers", allusers);
        session.setAttribute("advertisements", advertisements);
        RequestDispatcher rd = req.getRequestDispatcher("home.jsp");
        rd.forward(req, resp);
    }
}
