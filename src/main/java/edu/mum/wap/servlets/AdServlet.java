package edu.mum.wap.servlets;

import edu.mum.wap.services.AdService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.time.LocalDate;

@WebServlet("/pages/adv")
public class AdServlet extends HttpServlet {

    AdService adService = new AdService();

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String advUrl = req.getParameter("advUrl");
        String startStr = req.getParameter("start");
        String endStr = req.getParameter("end");
        if (advUrl == null || advUrl.isEmpty() || startStr == null || startStr.isEmpty()
                || endStr == null || endStr.isEmpty()) {
            resp.setStatus(500);
            resp.getWriter().print("{description:'You need to fill all the required fields in the to register!'}");
            return;
        }
        LocalDate start = LocalDate.parse(req.getParameter("start"));
        LocalDate end = LocalDate.parse(req.getParameter("end"));

        resp.sendRedirect("home.jsp");
        //adService.addAdvertisement();
    }
}
