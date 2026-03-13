<%-- 
    Document   : Invalid
    Created on : 12 Dec 2025, 00:51:09
    Author     : LENOVO User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Login Failed | EasyHire</title>

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
      linear-gradient(rgba(0,0,0,0.65), rgba(0,0,0,0.65)),
      url("index.jpg") no-repeat center/cover fixed;
}

/* ===== HEADER ===== */
header{
    position:fixed;
    top:0;
    width:100%;
    z-index:1000;
    background:linear-gradient(90deg,#1d4ed8,#7c3aed);
    box-shadow:0 8px 25px rgba(0,0,0,0.45);
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
    font-size:1.8rem;
    font-weight:800;
    color:#fff;
    letter-spacing:1px;
}

nav a{
    color:#e5e7eb;
    text-decoration:none;
    margin-left:26px;
    font-size:1rem;
}

nav a:hover{
    color:#fff;
    text-decoration:underline;
}

/* ===== CENTER ===== */
.main{
    min-height:100vh;
    display:flex;
    justify-content:center;
    align-items:center;
    padding-top:90px;
}

/* ===== ERROR CARD ===== */
.error-card{
    width:100%;
    max-width:420px;
    background:rgba(255,255,255,0.18);
    backdrop-filter:blur(16px);
    border-radius:16px;
    padding:45px 35px;
    text-align:center;
    box-shadow:0 25px 60px rgba(0,0,0,0.5);
    animation:fadeUp 0.6s ease;
    color:#fff;
}

@keyframes fadeUp{
    from{opacity:0; transform:translateY(30px);}
    to{opacity:1; transform:translateY(0);}
}

/* ===== ICON ===== */
.error-icon{
    width:90px;
    height:90px;
    border-radius:50%;
    background:linear-gradient(135deg,#ef4444,#dc2626);
    display:flex;
    align-items:center;
    justify-content:center;
    margin:0 auto 25px;
    font-size:3rem;
    font-weight:900;
    box-shadow:0 12px 25px rgba(239,68,68,0.6);
}

/* ===== TEXT ===== */
h2{
    font-size:2rem;
    margin-bottom:12px;
}

p{
    font-size:0.95rem;
    opacity:0.9;
    margin-bottom:30px;
}

/* ===== BUTTON ===== */
.btn{
    display:inline-block;
    background:linear-gradient(90deg,#3b82f6,#6366f1);
    color:#fff;
    padding:14px 32px;
    border-radius:8px;
    font-weight:600;
    text-decoration:none;
    transition:0.3s;
}

.btn:hover{
    transform:translateY(-2px);
    box-shadow:0 8px 20px rgba(99,102,241,0.5);
}

/* ===== RESPONSIVE ===== */
@media(max-width:480px){
    nav a{ margin-left:16px; }
    .error-card{ padding:35px 26px; }
}
</style>
</head>

<body>

<!-- ===== HEADER ===== -->
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

<!-- ===== ERROR CONTENT ===== -->
<div class="main">
    <div class="error-card">
        <div class="error-icon">
            <i class="fas fa-xmark"></i>
        </div>
        <h2>Access Denied</h2>
        <p>Invalid username or password.<br>Please try again to continue.</p>
        <a href="home.jsp" class="btn">Return to Login</a>
    </div>
</div>

</body>
</html>
