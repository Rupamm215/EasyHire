<%-- 
    Document   : aboutus
    Created on : 14 Dec 2025
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>About Us | EasyHire</title>

<style>
/* ===== GLOBAL ===== */
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

/* ===== NAVBAR ===== */
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

/* ===== ABOUT SECTION ===== */
.page-wrap{
    padding:70px 20px;
    display:flex;
    justify-content:center;
}

.about-card{
    background:#ffffff;
    max-width:1100px;
    width:100%;
    padding:50px;
    border-radius:22px;
    box-shadow:0 30px 70px rgba(0,0,0,0.45);
}

/* Two-column layout */
.about-grid{
    display:grid;
    grid-template-columns:1fr 1fr;
    gap:50px;
    align-items:center;
}

/* Image */
.about-image img{
    width:100%;
    border-radius:18px;
    object-fit:cover;
    box-shadow:0 20px 45px rgba(0,0,0,0.3);
}

/* Content */
.about-content h1{
    font-size:42px;
    font-weight:800;
    color:#111827;
    margin-bottom:18px;
    letter-spacing:1px;
}

.about-content h1 span{
    color:#2563eb;
}

.about-content p{
    font-size:16px;
    line-height:1.9;
    color:#374151;
    margin-bottom:18px;
}

/* Features */
.features{
    display:grid;
    grid-template-columns:1fr 1fr;
    gap:18px;
    margin-top:25px;
}

.feature{
    display:flex;
    gap:12px;
    align-items:flex-start;
}

.feature span{
    font-size:22px;
}

.feature h3{
    font-size:16px;
    color:#1f2937;
    margin-bottom:4px;
}

.feature p{
    font-size:14px;
    color:#4b5563;
}

/* Responsive */
@media(max-width:900px){
    .about-grid{
        grid-template-columns:1fr;
    }
    .about-content h1{
        font-size:34px;
    }
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
    <div class="about-card">

        <div class="about-grid">

            <!-- LEFT IMAGE -->
            <div class="about-image">
                <!-- Replace with your own image if needed -->
                <img src="about.jpg" alt="About EasyHire">
            </div>

            <!-- RIGHT CONTENT -->
            <div class="about-content">
                <h1>ABOUT <span>US</span></h1>

                <p>
                    EasyHire is a next-generation hiring platform that connects
                    employers with skilled workers quickly, reliably, and securely.
                    We are redefining how local talent meets real opportunities.
                </p>

                <p>
                    From daily wage workers to professional service providers,
                    EasyHire simplifies the hiring process with transparency,
                    trust, and modern technology.
                </p>

                <div class="features">
                    <div class="feature">
                        <span>🌍</span>
                        <div>
                            <h3>Global UI Standards</h3>
                            <p>Modern design inspired by international platforms.</p>
                        </div>
                    </div>

                    <div class="feature">
                        <span>⚡</span>
                        <div>
                            <h3>Instant Hiring</h3>
                            <p>Connect with workers in minutes.</p>
                        </div>
                    </div>

                    <div class="feature">
                        <span>🔒</span>
                        <div>
                            <h3>Secure Platform</h3>
                            <p>Safe handling of user data.</p>
                        </div>
                    </div>

                    <div class="feature">
                        <span>🤝</span>
                        <div>
                            <h3>Community Focused</h3>
                            <p>Empowering local workforce.</p>
                        </div>
                    </div>
                </div>

            </div>

        </div>
    </div>
</div>

</body>
</html>
