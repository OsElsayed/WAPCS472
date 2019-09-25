package edu.mum.wap.servlets;

import edu.mum.wap.models.Advertisement;
import edu.mum.wap.services.AdService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.time.LocalDate;

@WebServlet("/pages/adv")
public class AdServlet extends HttpServlet {

    AdService adService = new AdService();

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        String advUrl = req.getParameter("advUrl");
        String startStr = req.getParameter("start");
        String endStr = req.getParameter("end");
        if (advUrl == null || advUrl.isEmpty() || startStr == null || startStr.isEmpty()
                || endStr == null || endStr.isEmpty()) {
            session.setAttribute("error", "You need to fill all the required fields in the to register!");
            resp.sendRedirect(((HttpServletRequest) req).getContextPath() + "/pages/jobs.jsp");
            return;
        }
        Advertisement advertisement = prepareAdvertisement(advUrl, startStr, endStr);
        adService.addAdvertisement(advertisement);
        resp.sendRedirect("home.jsp");
    }

    private Advertisement prepareAdvertisement(String advUrl, String startStr, String endStr) {
        LocalDate start = LocalDate.parse(startStr);
        LocalDate end = LocalDate.parse(endStr);
        Advertisement advertisement = new Advertisement();
        advertisement.setAdURL(advUrl);
        java.util.Date startDate = java.sql.Date.valueOf(start);
        java.util.Date endDate = java.sql.Date.valueOf(end);
        advertisement.setShowingStartDate(startDate);
        advertisement.setShowingEndDate(endDate);
        return advertisement;
    }
}
