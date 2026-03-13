/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.mycompany.project1;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet(name = "FindWorkerServlet", urlPatterns = {"/FindWorkerServlet"})
public class FindWorkerServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html;charset=UTF-8");

        String name = request.getParameter("name");
        String mobileno = request.getParameter("mobileno");
        String[] worktypeArray = request.getParameterValues("worktype");
        String worktype = (worktypeArray != null) ? String.join(", ", worktypeArray) : "";
        String location = request.getParameter("location");
        String budget = request.getParameter("budget");
        String date = request.getParameter("date");

        Employer emp = new Employer(name, mobileno, worktype, location, budget, date);
        boolean status = EmployerDAO.insertEmployer(emp);

        try (PrintWriter out = response.getWriter()) {

            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<meta charset='UTF-8'>");
            out.println("<title>Worker Request Status</title>");

            out.println("<style>");
            out.println("*{margin:0;padding:0;box-sizing:border-box;font-family:'Segoe UI',Tahoma,sans-serif;}");
            out.println("body{min-height:100vh;display:flex;align-items:center;justify-content:center;");
            out.println("background:linear-gradient(rgba(0,0,0,.6),rgba(0,0,0,.6)),url('index.jpg') no-repeat center/cover;}");

            out.println(".card{width:450px;background:#fff;border-radius:16px;");
            out.println("box-shadow:0 20px 45px rgba(0,0,0,.4);padding:32px;text-align:center;}");

            out.println(".success{color:#16a34a;font-size:22px;font-weight:700;margin-bottom:10px;}");
            out.println(".error{color:#dc2626;font-size:22px;font-weight:700;margin-bottom:10px;}");

            out.println(".details{text-align:left;margin-top:18px;color:#374151;font-size:15px;}");
            out.println(".details p{margin:6px 0;}");

            out.println(".btn{display:inline-block;margin-top:22px;padding:10px 26px;");
            out.println("background:#2563eb;color:#fff;text-decoration:none;border-radius:8px;font-weight:600;}");
            out.println(".btn:hover{background:#1e40af;}");

            out.println("</style>");
            out.println("</head>");
            out.println("<body>");

            out.println("<div class='card'>");

            if (status) {
                out.println("<div class='success'>✔ Worker Request Submitted</div>");
            } else {
                out.println("<div class='error'>✖ Submission Failed</div>");
            }

            out.println("<div class='details'>");
            out.println("<p><b>Name:</b> " + name + "</p>");
            out.println("<p><b>Mobile No:</b> " + mobileno + "</p>");
            out.println("<p><b>Work Type:</b> " + worktype + "</p>");
            out.println("<p><b>Location:</b> " + location + "</p>");
            out.println("<p><b>Budget:</b> ₹" + budget + "</p>");
            out.println("<p><b>Date:</b> " + date + "</p>");
            out.println("</div>");

            out.println("<a href='EasyHireNetwork.html' class='btn'>Back to Home</a>");

            out.println("</div>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
}
