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

@WebServlet(name = "AcceptJobServlet", urlPatterns = {"/AcceptJobServlet"})
public class AcceptJobServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html;charset=UTF-8");

        try (PrintWriter out = response.getWriter()) {

            int jobid = Integer.parseInt(request.getParameter("postId"));
            String wname = request.getParameter("wname");
            String wmobileno = request.getParameter("wmobileno");

            Worker worker = new Worker(jobid, wname, wmobileno);
            boolean status = WorkerDAO.insertWorker(worker);

            // ===== HTML START =====
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Job Accepted</title>");

            // ===== CSS =====
            out.println("<style>");
            out.println("*{box-sizing:border-box;font-family:'Segoe UI',Arial;}");
            out.println("body{");
            out.println("  margin:0;");
            out.println("  min-height:100vh;");
            out.println("  background:linear-gradient(rgba(0,0,0,0.6),rgba(0,0,0,0.6)),");
            out.println("             url('index.jpg') no-repeat center/cover fixed;");
            out.println("}");

            // Congratulations heading
            out.println(".congrats{");
            out.println("  text-align:center;");
            out.println("  font-size:42px;");
            out.println("  font-weight:900;");
            out.println("  color:#facc15;");
            out.println("  margin-top:40px;");
            out.println("  text-shadow:0 6px 15px rgba(0,0,0,0.8);");
            out.println("}");

            out.println(".subtitle{");
            out.println("  text-align:center;");
            out.println("  color:#e5e7eb;");
            out.println("  font-size:18px;");
            out.println("  margin-bottom:30px;");
            out.println("}");

            // Center card
            out.println(".wrapper{display:flex;justify-content:center;}");
            out.println(".card{");
            out.println("  background:#ffffff;");
            out.println("  width:420px;");
            out.println("  padding:28px;");
            out.println("  border-radius:14px;");
            out.println("  box-shadow:0 18px 40px rgba(0,0,0,0.45);");
            out.println("}");

            out.println(".success{color:#16a34a;font-size:22px;font-weight:700;text-align:center;margin-bottom:16px;}");
            out.println(".error{color:#dc2626;font-size:22px;font-weight:700;text-align:center;margin-bottom:16px;}");

            out.println("table{width:100%;border-collapse:collapse;}");
            out.println("td{padding:8px;font-size:15px;}");
            out.println(".label{font-weight:600;width:40%;}");

            out.println(".btn{display:block;margin-top:22px;padding:10px;text-align:center;");
            out.println("background:#7c3aed;color:white;text-decoration:none;border-radius:8px;font-weight:600;}");
            out.println(".btn:hover{background:#6d28d9;}");

            out.println("</style>");
            out.println("</head>");

            out.println("<body>");

            // ===== TOP CENTER CONGRATULATIONS =====
            out.println("<div class='congrats'>🎉 Congratulations 🎉</div>");
            out.println("<div class='subtitle'>The worker has been successfully accepted</div>");

            // ===== CARD =====
            out.println("<div class='wrapper'>");
            out.println("<div class='card'>");

            if (status) {
                out.println("<div class='success'>Worker Accepted Successfully</div>");
            } else {
                out.println("<div class='error'>Error Accepting Job</div>");
            }

            out.println("<table>");
            out.println("<tr><td class='label'>Job ID</td><td>:</td><td>" + jobid + "</td></tr>");
            out.println("<tr><td class='label'>Worker Name</td><td>:</td><td>" + wname + "</td></tr>");
            out.println("<tr><td class='label'>Mobile Number</td><td>:</td><td>" + wmobileno + "</td></tr>");
            out.println("</table>");

            out.println("<a href='FindWork.jsp' class='btn'>Back to Work List</a>");

            out.println("</div>");
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

    @Override
    public String getServletInfo() {
        return "Accept Job Servlet";
    }
}
