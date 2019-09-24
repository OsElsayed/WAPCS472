package edu.mum.wap.servlets;

import com.google.gson.Gson;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import java.io.IOException;

@MultipartConfig
@WebServlet("/pages/Timeline")
public class TimelineServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String comment = req.getParameter("comment");
        Part photo = req.getPart("photo");

        //PostService postService = new PostService();
        //Post post = postService.add(comment, photo);
        Gson gson = new Gson();
        //String postJson = gson.toJson(post);
        resp.setContentType("application/json");
        //resp.getWriter().write(postJson);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }
}
