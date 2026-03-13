<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Welcome | EasyHire</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<style>
/* ================= RESET ================= */
*{
    margin:0;
    padding:0;
    box-sizing:border-box;
    font-family:"Poppins","Segoe UI",sans-serif;
}

/* ================= BODY BACKGROUND ================= */
body{
    min-height:100vh;
    background:
      linear-gradient(rgba(0,0,0,0.55), rgba(0,0,0,0.55)),
      url("index.jpg") no-repeat center/cover fixed;
    color:#fff;
}

/* ================= NAVBAR ================= */
header{
    position:sticky;
    top:0;
    z-index:1000;
    background:linear-gradient(90deg,#1e40af,#1d4ed8);
    box-shadow:0 10px 30px rgba(0,0,0,0.6);
    border-bottom:6px solid #ffffff; /* ✅ THICK BORDER */
}

.navbar{
    max-width:1200px;
    margin:auto;
    padding:22px 36px;
    display:flex;
    justify-content:space-between;
    align-items:center;
}

.brand{
    font-size:30px;
    font-weight:900;
    letter-spacing:1px;
}

nav a{
    color:#fff;
    text-decoration:none;
    margin-left:30px;
    font-size:17px;
    font-weight:600;
    padding-bottom:6px;
    border-bottom:4px solid transparent;
    transition:0.3s;
}

nav a:hover{
    border-bottom:4px solid #fff;
}

/* ================= MAIN CONTAINER ================= */
.main{
    min-height:calc(100vh - 100px);
    display:flex;
    justify-content:center;
    align-items:center;
    padding:40px 20px;
}

/* ================= BIG INFO BOX ================= */
.info-box{
    width:900px;                 /* ✅ BIG BOX */
    max-width:95%;
    background:rgba(255,255,255,0.15);
    backdrop-filter:blur(14px);
    padding:50px;
    border-radius:22px;
    text-align:center;
    box-shadow:0 25px 60px rgba(0,0,0,0.7);
    border:2px solid rgba(255,255,255,0.4);
    animation:fadeIn 0.8s ease;
}

/* ================= IMAGE ================= */
.info-box img{
    width:200px;
    height:auto;
    margin-bottom:25px;
    filter:drop-shadow(0 10px 20px rgba(0,0,0,0.6));
}

/* ================= TEXT ================= */
.info-box h1{
    font-size:42px;
    margin-bottom:20px;
    font-weight:900;
}

.info-box p{
    font-size:18px;
    line-height:1.8;
    opacity:0.95;
    margin-bottom:30px;
}

/* ================= BUTTON ================= */
.action-btn{
    display:inline-block;
    text-decoration:none;
    padding:16px 42px;
    background:linear-gradient(90deg,#22c55e,#16a34a);
    color:#fff;
    font-size:18px;
    font-weight:700;
    border-radius:40px;
    box-shadow:0 10px 25px rgba(0,0,0,0.5);
    transition:0.3s;
}

.action-btn:hover{
    transform:translateY(-3px);
    box-shadow:0 14px 30px rgba(34,197,94,0.6);
}

/* ================= ANIMATION ================= */
@keyframes fadeIn{
    from{opacity:0; transform:translateY(30px);}
    to{opacity:1; transform:translateY(0);}
}

/* ================= RESPONSIVE ================= */
@media(max-width:600px){
    .info-box{
        padding:35px 25px;
    }
    .info-box h1{
        font-size:32px;
    }
}
</style>
</head>

<body>

<!-- ================= HEADER ================= -->
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

<!-- ================= MAIN CONTENT ================= -->
<div class="main">
    <div class="info-box">

        <!-- 🔽 IMAGE ABOVE WELCOME TEXT -->
        <img src="easyhire.jpg" alt="EasyHire Logo">

        <h1>Welcome to EasyHire</h1>

        <p>
            EasyHire is a smart hiring platform designed to connect employers
            with skilled workers quickly and efficiently. Employers can post
            work requirements, while workers can easily find and accept jobs
            based on their skills and location.
        </p>

        <p>
            Our mission is to simplify hiring, save time, and create trusted
            job connections through a secure and user-friendly system.
        </p>

        <a href="FindWorkServlet" class="action-btn">
            View Available Work
        </a>

    </div>
</div>

</body>
</html>
