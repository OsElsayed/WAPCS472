package edu.mum.wap.servlets;

import edu.mum.wap.models.User;
import edu.mum.wap.services.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/pages/Follow")
public class FollowServlet extends HttpServlet {
    List<User> followings = new ArrayList<>();

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int ind = -1;
        Long followId = Long.valueOf(req.getParameter("followId"));
        UserService userService = new UserService();
        User follow = userService.findUser(followId);
        User me = (User) req.getSession().getAttribute("user");
        me = userService.findUser(me.getId());
        followings = me.getFollowersList();

        for (User u : followings) {
            if (u.getId() == follow.getId()) {
                me.getFollowersList().remove(u);
                try {
                    userService.addUser(me, true);
                } catch (NoSuchAlgorithmException e) {
                    e.printStackTrace();
                }
                return;
            }
        }

        followings.add(follow);
        me.setFollowersList(followings);

        userService.updateUser(me);

    }
}
