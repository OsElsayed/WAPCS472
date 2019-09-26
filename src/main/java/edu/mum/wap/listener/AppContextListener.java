package edu.mum.wap.listener;

import edu.mum.wap.models.User;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;
import java.util.HashMap;
import java.util.Map;

@WebListener
public class AppContextListener implements ServletContextListener {

    @Override
    public void contextInitialized(ServletContextEvent sce) {
        Map<Long, User> userMapNotification = new HashMap<>();
        ServletContext servletContext = sce.getServletContext();
        servletContext.setAttribute("notificationMap",userMapNotification);
        System.out.println("**** Application Context Initialized Successfully!!!");
    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {
        sce.getServletContext().removeAttribute("notificationMap");
    }
}
