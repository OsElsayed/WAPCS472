<%@ page import="edu.mum.wap.models.User" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <%
        response.setHeader("Cache-Control","no-cache");
        response.setHeader("Cache-Control","no-store");
        response.setHeader("Pragma","no-cache");
        response.setDateHeader ("Expires", 0);
        if (session.getAttribute("user") == null) {
            response.sendRedirect("pages/sign-in.jsp");
        }
        if (session.getAttribute("user") != null) {
            if(request.getRequestURI().contains("advertisement") || request.getRequestURI().contains("users")){
                User user = (User)session.getAttribute("user");
                if (!user.isAdmin()){
                    response.sendRedirect("errorPage.jsp");
                }
            }
        }

    %>
    <c:choose>
        <c:when test="${not empty title}">
            <title>Social WAPCS472 - ${title}</title>
        </c:when>
        <c:otherwise>
            <title>Social WAPCS472</title>
        </c:otherwise>
    </c:choose>


    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content=""/>
    <meta name="keywords" content=""/>
    <link rel="stylesheet" type="text/css" href="../css/animate.css">
    <link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="../css/line-awesome.css">
    <link rel="stylesheet" type="text/css" href="../css/line-awesome-font-awesome.min.css">
    <link href="../vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" type="text/css" href="../css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="../lib/slick/slick.css">
    <link rel="stylesheet" type="text/css" href="../lib/slick/slick-theme.css">
    <link rel="stylesheet" type="text/css" href="../css/style.css">
    <link rel="stylesheet" type="text/css" href="../css/responsive.css">
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/2.1.4/toastr.min.css">
</head>
