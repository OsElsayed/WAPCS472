package edu.mum.wap.servlets;

import com.google.gson.Gson;
import edu.mum.wap.models.User;
import edu.mum.wap.services.UserService;
import org.apache.commons.collections4.CollectionUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.*;

@WebServlet("/pages/notification")
public class NotificationServlet extends HttpServlet {

    UserService userService = new UserService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        User user = (User) req.getSession().getAttribute("user");
        User freshUserFromDb = userService.findUser(user.getId());
        if (user != null) {
            Map<Long, List<User>> notificationMap = (HashMap) req.getServletContext().getAttribute("notificationMap");
            if (notificationMap != null) {
                List<User> userFollowersFromMap = notificationMap.get(user.getId());
                String followers = "";
                resp.setContentType("application/json");
                resp.setCharacterEncoding("UTF-8");
                List<User> newFollowers = new ArrayList<>();
                if (userFollowersFromMap == null) {
                    userFollowersFromMap = new ArrayList<>();
                    notificationMap.put(user.getId(), userFollowersFromMap);
                } else {
                    if (freshUserFromDb != null && freshUserFromDb.getFollowersList() != null
                            && user.getFollowersList() != null) {
                        if (freshUserFromDb.getFollowersList().size() > user.getFollowersList().size()) {
                            newFollowers = checkDifferentIds(freshUserFromDb.getFollowersList(), user.getFollowersList());
                        }
                    }
                }
                followers = new Gson().toJson(newFollowers);
                req.getSession().removeAttribute("notifs");
                req.getSession().setAttribute("notifs",newFollowers);
                resp.getWriter().write(followers);
            }
        }
    }

    private List<User> checkDifferentIds(List<User> freshList, List<User> sessionList) {
        List<Long> freshIds = new ArrayList<>();
        List<Long> sessionIds = new ArrayList<>();
        freshList.forEach(s -> freshIds.add(s.getId()));
        sessionList.forEach(s -> sessionIds.add(s.getId()));
        ArrayList<Long> newIds = new ArrayList<>(CollectionUtils.subtract(freshIds,
                sessionIds));
        List<User> diff = new ArrayList<>();
        for (User user : freshList) {
            if (newIds.contains(user.getId())) {
                diff.add(user);
            }
        }
        return diff;
    }
}
