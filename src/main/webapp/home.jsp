<%-- 
    Document   : home.jsp
    Created on : 11 Oct 2025, 17:22:32
    Author     : LENOVO User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Admin Login | EasyHire</title>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

<style>
/* ===== RESET ===== */
*{
    margin:0;
    padding:0;
    box-sizing:border-box;
    font-family:'Segoe UI',Tahoma,Geneva,Verdana,sans-serif;
}

/* ===== BACKGROUND ===== */
body{
    min-height:100vh;
    background:
      linear-gradient(rgba(0,0,0,0.55), rgba(0,0,0,0.55)),
      url("index.jpg") no-repeat center/cover fixed;
}

/* ===== HEADER / NAVBAR ===== */
header{
    position:fixed;
    top:0;
    width:100%;
    z-index:1000;
    background:linear-gradient(90deg,#1d4ed8,#7c3aed);
    box-shadow:0 6px 18px rgba(0,0,0,0.4);
}

.navbar{
    max-width:1200px;
    margin:auto;
    padding:18px 32px;
    display:flex;
    justify-content:space-between;
    align-items:center;
}

.brand{
    color:#fff;
    font-size:1.8rem;
    font-weight:800;
    letter-spacing:1px;
}

nav a{
    color:#e5e7eb;
    text-decoration:none;
    margin-left:28px;
    font-weight:500;
    font-size:1rem;
}

nav a:hover{
    color:#fff;
    text-decoration:underline;
}

/* ===== CENTER LOGIN SECTION ===== */
.main{
    min-height:100vh;
    display:flex;
    justify-content:center;
    align-items:center;
    padding-top:90px;
}

/* ===== LOGIN CARD ===== */
.login-container{
    width:100%;
    max-width:420px;
    background:rgba(255,255,255,0.15);
    backdrop-filter:blur(14px);
    border-radius:14px;
    padding:40px 35px;
    box-shadow:0 25px 60px rgba(0,0,0,0.45);
    color:#fff;
}

/* ===== HEADER ===== */
.login-header{
    text-align:center;
    margin-bottom:30px;
}

.login-header i{
    font-size:3.2rem;
    color:#93c5fd;
    margin-bottom:12px;
}

.login-header h1{
    font-size:2rem;
    font-weight:700;
}

.login-header p{
    font-size:0.95rem;
    opacity:0.85;
}

/* ===== FORM ===== */
.form-group{
    margin-bottom:22px;
}

label{
    display:block;
    margin-bottom:6px;
    font-size:0.9rem;
}

.input-container{
    position:relative;
}

.input-container i{
    position:absolute;
    left:14px;
    top:50%;
    transform:translateY(-50%);
    color:#cbd5f5;
}

input{
    width:100%;
    padding:12px 14px 12px 42px;
    border-radius:6px;
    border:none;
    outline:none;
    font-size:0.95rem;
}

input:focus{
    box-shadow:0 0 0 2px #93c5fd;
}

/* ===== BUTTON ===== */
.submit-btn{
    width:100%;
    background:linear-gradient(90deg,#3b82f6,#6366f1);
    color:white;
    border:none;
    padding:13px;
    border-radius:6px;
    font-size:1rem;
    font-weight:600;
    cursor:pointer;
    margin-top:10px;
}

.submit-btn:hover{
    opacity:0.9;
}

/* ===== FOOTER LINKS ===== */
.footer-links{
    text-align:center;
    margin-top:22px;
    font-size:0.85rem;
}

.footer-links a{
    color:#bfdbfe;
    text-decoration:none;
    margin:0 8px;
}

.footer-links a:hover{
    text-decoration:underline;
}

/* ===== RESPONSIVE ===== */
@media(max-width:480px){
    nav a{ margin-left:16px; }
    .login-container{ padding:30px 24px; }
}
</style>
</head>

<body>

<!-- ===== HEADER ===== -->
<header>
    <div class="navbar">
        <div class="brand">EasyHire</div>
        <nav>
            <a href="EasyHireNetwork.html">Home</a>
            <a href="aboutus.jsp">About Us</a>
            <a href="contactus.jsp">Contact Us</a>
            <a href="login.jsp">Admin Login</a>
        </nav>
    </div>
</header>

<!-- ===== LOGIN ===== -->
<div class="main">
    <div class="login-container">
        <div class="login-header">
            <i class="fas fa-user-shield"></i>
            <h1>Admin Login</h1>
            <p>Secure access to EasyHire dashboard</p>
        </div>

        <form action="loginServlet" method="POST">
            <div class="form-group">
                <label>Username</label>
                <div class="input-container">
                    <i class="fas fa-user"></i>
                    <input type="text" name="username" placeholder="Enter username" required>
                </div>
            </div>

            <div class="form-group">
                <label>Password</label>
                <div class="input-container">
                    <i class="fas fa-lock"></i>
                    <input type="password" name="password" placeholder="Enter password" required>
                </div>
            </div>

            <button type="submit" class="submit-btn">
                <i class="fas fa-sign-in-alt"></i> Login
            </button>
        </form>

        <div class="footer-links">
            <a href="#">Forgot Password?</a> |
            <a href="#">Help Center</a>
        </div>
    </div>
</div>

</body>
</html>
