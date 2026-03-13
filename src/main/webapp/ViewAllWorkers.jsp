<%-- 
    Document   : ViewAllWorkers
    Created on : 16 Dec 2025
    Author     : USER
--%>

<%@page import="com.mycompany.project1.AcceptJob"%>
<%@page import="java.util.List"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View All Workers</title>

    <style>
        /* ===== RESET ===== */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
        }

        /* ===== PAGE ===== */
        body {
            min-height: 100vh;
            background: linear-gradient(
                rgba(0, 0, 0, 0.6),
                rgba(0, 0, 0, 0.6)
            ),
            url("index.jpg") no-repeat center center fixed;
            background-size: cover;
            padding: 40px 20px;
            color: #fff;
            text-align: center;
        }

        /* ===== HEADING ===== */
        h2 {
            font-size: 32px;
            margin-bottom: 35px;
        }

        /* ===== USER CARD ===== */
        .job-card {
            max-width: 1000px;
            margin: 20px auto;
            background: rgba(255, 255, 255, 0.15);
            backdrop-filter: blur(10px);
            border-radius: 16px;
            padding: 25px;
            box-shadow: 0 15px 35px rgba(0, 0, 0, 0.5);
        }

        /* ===== COLUMN GRID ===== */
        .job-details-group {
            display: grid;
            grid-template-columns: repeat(5, 1fr);
            gap: 15px;
            margin-bottom: 20px;
        }

        /* ===== COLUMN BOX ===== */
        .job-details-group div {
            background: rgba(0, 0, 0, 0.4);
            padding: 14px 10px;
            border-radius: 10px;
        }

        /* ===== LABEL ===== */
        .job-details-group strong {
            display: block;
            color: #ffeb3b;
            font-size: 14px;
            margin-bottom: 6px;
        }

        /* ===== VALUE ===== */
        .job-details-group span {
            font-size: 15px;
            font-weight: 500;
        }

        /* ===== DELETE BUTTON ===== */
        .action-area {
            text-align: center;
        }

        .action-area a {
            display: inline-block;
            padding: 12px 36px;
            background: linear-gradient(135deg, #ff0000, #ff4b2b);
            color: white;
            text-decoration: none;
            font-size: 16px;
            font-weight: 700;
            border-radius: 10px;
            box-shadow: 0 10px 25px rgba(255, 0, 0, 0.6);
            transition: transform 0.2s ease, box-shadow 0.2s ease;
        }

        .action-area a:hover {
            transform: scale(1.08);
            box-shadow: 0 14px 32px rgba(255, 0, 0, 0.85);
        }

        /* ===== NO DATA ===== */
        .no-data {
            font-size: 18px;
            margin-top: 40px;
        }
    </style>
</head>

<body>

<h2>Accepted Workers List</h2>

<%
    List<AcceptJob> aj = (List<AcceptJob>) request.getAttribute("aj");

    if (aj != null && !aj.isEmpty()) {
        for (AcceptJob worker : aj) {
%>

    <!-- ONE WORKER -->
    <div class="job-card">

        <!-- DATA IN COLUMNS -->
        <div class="job-details-group">
            <div>
                <strong>Worker ID</strong>
                <span><%= worker.getId() %></span>
            </div>

            <div>
                <strong>Name</strong>
                <span><%= worker.getWorkerName() %></span>
            </div>

            <div>
                <strong>Mobile</strong>
                <span><%= worker.getMobileNo() %></span>
            </div>

            <div>
                <strong>Job ID</strong>
                <span><%= worker.getJobId() %></span>
            </div>

            <div>
                <strong>Accepted Date</strong>
                <span><%= worker.getAcceptedDate() %></span>
            </div>
        </div>

        <!-- DELETE BUTTON -->
        <div class="action-area">
            <a href="DeleteWorkerController?id=<%= worker.getId() %>"
               onclick="return confirm('Are you sure you want to delete this worker?');">
                DELETE
            </a>
        </div>

    </div>

<%
        }
    } else {
%>
    <p class="no-data">No workers found.</p>
<%
    }
%>

</body>
</html>
