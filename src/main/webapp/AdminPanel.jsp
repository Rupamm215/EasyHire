<%-- 
    Document   : AdminPanel
    Created on : 12 Dec 2025
    Author     : LENOVO User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Easy Hire Network - Admin Panel</title>

    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

    <style>
        /* ===== RESET ===== */
        *{
            margin:0;
            padding:0;
            box-sizing:border-box;
            font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        /* ===== BODY BACKGROUND IMAGE ===== */
        body{
            min-height:100vh;
            background:
              linear-gradient(rgba(0,0,0,0.55), rgba(0,0,0,0.55)),
              url("index.jpg") no-repeat center center fixed;
            background-size:cover;
            display:flex;
            justify-content:center;
            align-items:center;
            padding:30px;
        }

        /* ===== ADMIN CONTAINER (GLASS EFFECT) ===== */
        .admin-container{
            width:100%;
            max-width:900px;
            background:rgba(255,255,255,0.18);
            backdrop-filter:blur(12px);
            -webkit-backdrop-filter:blur(12px);
            border-radius:20px;
            padding:45px;
            box-shadow:0 20px 50px rgba(0,0,0,0.4);
            border:1px solid rgba(255,255,255,0.3);
        }

        /* ===== HEADER ===== */
        .header{
            text-align:center;
            margin-bottom:45px;
        }

        .admin-icon{
            font-size:4rem;
            color:#ffd369;
            margin-bottom:15px;
        }

        .header h1{
            color:#fff;
            font-size:2.4rem;
            margin-bottom:10px;
            text-shadow:0 3px 8px rgba(0,0,0,0.6);
        }

        .header p{
            color:#e5e7eb;
            font-size:1.1rem;
        }

        /* ===== ACTION CARDS ===== */
        .admin-actions{
            display:grid;
            grid-template-columns:repeat(auto-fit,minmax(260px,1fr));
            gap:30px;
        }

        .action-card{
            background:rgba(255,255,255,0.95);
            border-radius:16px;
            padding:35px 25px;
            text-align:center;
            text-decoration:none;
            color:#333;
            transition:all 0.35s ease;
            box-shadow:0 10px 25px rgba(0,0,0,0.2);
            border:3px solid transparent;
        }

        .action-card:hover{
            transform:translateY(-8px) scale(1.03);
            border-color:#667eea;
            box-shadow:0 20px 40px rgba(0,0,0,0.35);
        }

        .card-icon{
            font-size:3rem;
            color:#667eea;
            margin-bottom:18px;
        }

        .action-card h3{
            font-size:1.4rem;
            margin-bottom:10px;
        }

        .action-card p{
            font-size:0.95rem;
            color:#555;
            line-height:1.5;
        }

        /* ===== LOGOUT BUTTON ===== */
        .logout-wrapper{
            text-align:center;
            margin-top:45px;
        }

        .logout-btn{
            display:inline-block;
            background:linear-gradient(135deg,#ff4e50,#f44336);
            color:#fff;
            padding:14px 34px;
            border-radius:50px;
            font-size:1.05rem;
            font-weight:600;
            text-decoration:none;
            transition:all 0.3s ease;
            box-shadow:0 10px 25px rgba(0,0,0,0.3);
        }

        .logout-btn i{
            margin-right:8px;
        }

        .logout-btn:hover{
            transform:scale(1.08);
            background:linear-gradient(135deg,#e53935,#c62828);
        }

        /* ===== RESPONSIVE ===== */
        @media(max-width:600px){
            .admin-container{
                padding:30px 20px;
            }
            .header h1{
                font-size:2rem;
            }
        }
    </style>
</head>

<body>

    <div class="admin-container">

        <div class="header">
            <i class="fas fa-user-shield admin-icon"></i>
            <h1>Admin Dashboard</h1>
            <p>Easy Hire Network Management Panel</p>
        </div>

        <div class="admin-actions">

            <a href="AllJobAdmin" class="action-card">
                <i class="fas fa-briefcase card-icon"></i>
                <h3>All Employers</h3>
                <p>View and manage all available job listings</p>
            </a>

            <a href="AllWorkersController" class="action-card">
                <i class="fas fa-check-circle card-icon"></i>
                <h3>Worker Accepted</h3>
                <p>Monitor jobs that have been accepted by workers</p>
            </a>

        </div>

        <div class="logout-wrapper">
            <a href="EasyHireNetwork.html" class="logout-btn">
                <i class="fas fa-sign-out-alt"></i> Logout
            </a>
        </div>

    </div>

</body>
</html>
