<%-- 
    Document   : Dashboard
    Created on : 16 Dec 2025
    Author     : USER
--%>

<%@page import="com.mycompany.project1.Employer"%>
<%
    Employer s = (Employer) session.getAttribute("user");
    if(s == null){
        response.sendRedirect("Loginn.jsp");
        return;
    }
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Employer Dashboard | EasyHire</title>

    <style>
        /* ===== RESET ===== */
        *{
            margin:0;
            padding:0;
            box-sizing:border-box;
            font-family:"Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
        }

        /* ===== BACKGROUND (SAME AS LOGIN) ===== */
        body{
            min-height:100vh;
            background:
              linear-gradient(rgba(0,0,0,0.55), rgba(0,0,0,0.55)),
              url("index.jpg") no-repeat center/cover fixed;
            display:flex;
            justify-content:center;
            align-items:center;
            color:#333;
        }

        /* ===== DASHBOARD CARD ===== */
        .dashboard-container{
            background:#ffffff;
            padding:40px;
            border-radius:18px;
            box-shadow:0 25px 55px rgba(0,0,0,0.35);
            max-width:520px;
            width:100%;
            text-align:center;
        }

        .id{
            font-size:18px;
            color:#6b7280;
            margin-bottom:10px;
            font-weight:600;
        }

        h2{
            color:#1f2937;
            margin-bottom:25px;
            font-size:28px;
            font-weight:700;
        }

        /* ===== INFO BOX ===== */
        .info{
            text-align:left;
            margin:20px 0;
            padding:22px;
            background:#f8fafc;
            border-radius:14px;
            border-left:6px solid #6366f1;
        }

        .info p{
            margin:12px 0;
            font-size:17px;
        }

        .info b{
            color:#4f46e5;
            min-width:130px;
            display:inline-block;
        }

        /* ===== LOGOUT BUTTON ===== */
        .logout{
            display:inline-block;
            margin-top:30px;
            padding:13px 34px;
            background:linear-gradient(90deg,#ef4444,#dc2626);
            color:white;
            text-decoration:none;
            border-radius:10px;
            font-weight:600;
            transition:0.3s;
        }

        .logout:hover{
            transform:translateY(-1px);
            box-shadow:0 12px 30px rgba(0,0,0,0.3);
        }
    </style>
</head>

<body>

    <div class="dashboard-container">
        <div class="id">ID: <%= s.getId() %></div>
        <h2>Welcome, <%= s.getName() %></h2>

        <div class="info">
            <p><b>Mobile:</b> <%= s.getMobileNo() %></p>
            <p><b>Work Type:</b> <%= s.getWorkType() %></p>
            <p><b>Location:</b> <%= s.getLocation() %></p>
            <p><b>Budget:</b> <%= s.getBudget() %></p>
            <p><b>Job Date:</b> <%= s.getJobDate() %></p>
        </div>

        <a href="LogoutServlet" class="logout">Logout</a>
    </div>

</body>
</html>
