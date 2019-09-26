package edu.mum.wap.servlets;

import com.google.gson.Gson;
import edu.mum.wap.models.User;
import edu.mum.wap.services.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@WebServlet("/pages/notification")
public class NotificationServlet extends HttpServlet {

    UserService userService = new UserService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        User user = (User) req.getSession().getAttribute("user");
        User freshUserFromDb = userService.findUser(user.getId());
        List<User> newFollowers = new ArrayList<>();
        if (user != null) {
            Map<Long, User> notificationMap = (HashMap) req.getServletContext().getAttribute("notificationMap");
            if (notificationMap != null) {
                User userFromMap = notificationMap.get(user.getId());
                String followers = "";
                resp.setContentType("application/json");
                resp.setCharacterEncoding("UTF-8");
                if (userFromMap == null) {
                    notificationMap.put(user.getId(), user);
                } else {
                    if (freshUserFromDb != null && freshUserFromDb.getFollowersList() != null
                            && user.getFollowersList() != null) {
                        if (freshUserFromDb.getFollowersList().size() > user.getFollowersList().size()) {
                            for (User user1 : notificationMap.values()) {
                                if (!newFollowers.contains(user1)) {
                                    newFollowers.add(user1);
                                }
                            }
                        }
                    }
                }
                followers = new Gson().toJson(newFollowers);
                resp.getWriter().write(followers);
            }
        }
    }
}
