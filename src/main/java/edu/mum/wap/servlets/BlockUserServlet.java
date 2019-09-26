package edu.mum.wap.servlets;


import edu.mum.wap.models.Post;
import edu.mum.wap.services.PostService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/pages/BlockUser")
public class BlockUserServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String id = req.getParameter("blockId");
        Long blockId = Long.valueOf(id);
        PostService postService = new PostService();
        Post post = postService.findPost(blockId);
        post.setVisible(false);
        postService.addPost(post);
        resp.sendRedirect("BlockUser");
        resp.addHeader("Refresh", "5");
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }
}
