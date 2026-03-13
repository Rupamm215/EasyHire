<%-- 
    Document   : contactus
    Created on : 14 Dec 2025, 11:26:25 pm
    Author     : USER
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Contact Us | EasyHire</title>

<!-- Font Awesome CDN for Social Icons -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">

<style>
/* ===== SAME CSS ===== */
*{
    margin:0;
    padding:0;
    box-sizing:border-box;
    font-family:'Poppins','Segoe UI',sans-serif;
}

body{
    min-height:100vh;
    background:
      linear-gradient(rgba(0,0,0,0.55), rgba(0,0,0,0.55)),
      url("index.jpg") no-repeat center/cover fixed;
}

header{
    position:sticky;
    top:0;
    z-index:1000;
    background:linear-gradient(90deg,#2563eb,#7c3aed);
    box-shadow:0 10px 28px rgba(0,0,0,0.4);
}

.navbar{
    max-width:1200px;
    margin:auto;
    padding:24px 32px;
    display:flex;
    justify-content:space-between;
    align-items:center;
}

.brand{
    font-size:28px;
    font-weight:800;
    color:white;
}

.navbar nav a{
    color:#e5e7eb;
    text-decoration:none;
    margin-left:28px;
    font-size:16px;
    font-weight:600;
}

.navbar nav a:hover{
    color:#fff;
    border-bottom:2px solid #fff;
    padding-bottom:4px;
}

/* ===== CONTACT CARD ===== */
.page-wrap{
    padding:60px 20px;
    display:flex;
    justify-content:center;
}

.card{
    background:#ffffff;
    max-width:700px;
    width:100%;
    padding:40px;
    border-radius:18px;
    box-shadow:0 28px 65px rgba(0,0,0,0.45);
}

.card h1{
    text-align:center;
    font-size:32px;
    margin-bottom:25px;
    color:#1f2937;
}

.contact-info{
    display:grid;
    grid-template-columns:1fr 1fr;
    gap:20px;
}

.info-box{
    background:#f9fafb;
    padding:20px;
    border-radius:12px;
    box-shadow:0 6px 18px rgba(0,0,0,0.1);
}

.info-box h3{
    color:#2563eb;
    margin-bottom:8px;
}

.info-box p{
    color:#374151;
    font-size:15px;
}

/* ===== SOCIAL MEDIA ===== */
.social-section{
    margin-top:35px;
    text-align:center;
}

.social-section h2{
    font-size:18px;
    color:#1f2937;
    margin-bottom:15px;
    font-weight:600;
}

.social-icons{
    display:flex;
    justify-content:center;
    gap:18px;
}

.social-icons a{
    width:44px;
    height:44px;
    background:linear-gradient(135deg,#2563eb,#7c3aed);
    color:#fff;
    display:flex;
    align-items:center;
    justify-content:center;
    border-radius:50%;
    font-size:20px;
    text-decoration:none;
    transition:all 0.3s ease;
}

.social-icons a:hover{
    transform:translateY(-5px) scale(1.05);
    box-shadow:0 12px 25px rgba(37,99,235,0.5);
}
</style>
</head>

<body>

<header>
    <div class="navbar">
        <div class="brand">EasyHire</div>
        <nav>
            <a href="home.jsp">Home</a>
            <a href="aboutus.jsp">About Us</a>
            <a href="contactus.jsp">Contact Us</a>
            <a href="login.jsp">Admin Login</a>
        </nav>
    </div>
</header>

<div class="page-wrap">
    <div class="card">
        <h1>Contact Us</h1>

        <div class="contact-info">
            <div class="info-box">
                <h3>📍 Address</h3>
                <p>EasyHire Network<br>Amravati, Maharashtra, India</p>
            </div>

            <div class="info-box">
                <h3>📞 Phone</h3>
                <p>+91 98765 43210</p>
            </div>

            <div class="info-box">
                <h3>📧 Email</h3>
                <p>support@easyhire.com</p>
            </div>

            <div class="info-box">
                <h3>⏰ Working Hours</h3>
                <p>Mon – Sat : 9:00 AM – 6:00 PM</p>
            </div>
        </div>

        <!-- ===== SOCIAL MEDIA ===== -->
        <div class="social-section">
            <h2>Connect With Us</h2>
            <div class="social-icons">
                <a href="#" title="Facebook"><i class="fab fa-facebook-f"></i></a>
                <a href="#" title="Instagram"><i class="fab fa-instagram"></i></a>
                <a href="#" title="Twitter / X"><i class="fab fa-x-twitter"></i></a>
                <a href="#" title="LinkedIn"><i class="fab fa-linkedin-in"></i></a>
            </div>
        </div>

    </div>
</div>

</body>
</html>
