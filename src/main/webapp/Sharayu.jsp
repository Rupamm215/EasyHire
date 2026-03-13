<!DOCTYPE html>

<html>
    <head>
        <title>TO DO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
       <style>
    /* =========================
       RESET
    ========================= */
    /* ===== Google Font ===== */
@import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap');

/* ===== Reset ===== */
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: "Segoe UI", Arial, sans-serif;
}

/* ===== Body ===== */
body {
    min-height: 100vh;
    background: #0f172a;   /* dark robotic blue */
    color: #e5e7eb;
    display: flex;
    flex-direction: column;
}

/* ===== Header & Navbar ===== */
header {
    background: #020617;
    border-bottom: 1px solid #1e293b;
}

nav {
    max-width: 1100px;
    margin: auto;
    padding: 14px 24px;
    display: flex;
    justify-content: space-between;
    align-items: center;
}

nav a {
    text-decoration: none;
    color: #e5e7eb;
    font-size: 14px;
    letter-spacing: 1px;   /* robotic feel */
    text-transform: uppercase;
    margin-left: 18px;
    transition: color 0.3s ease;
}

nav a:hover {
    color: #38bdf8; /* neon blue */
}

/* ===== Main Container ===== */
.container {
    max-width: 520px;
    margin: auto;
    padding: 36px;
    background: #020617;
    border: 1px solid #1e293b;
    border-radius: 6px;   /* sharp, robotic */
    text-align: center;
}

/* ===== Heading ===== */
.container h1 {
    font-size: 22px;
    font-weight: 500;
    letter-spacing: 2px;
    text-transform: uppercase;
    color: #38bdf8;
    margin-bottom: 28px;
}

/* ===== Buttons / Links ===== */
.container a {
    display: block;
    padding: 12px;
    margin: 12px 0;
    text-decoration: none;
    color: #e5e7eb;
    border: 1px solid #38bdf8;
    background: transparent;
    letter-spacing: 1px;
    transition: all 0.3s ease;
}

.container a:hover {
    background: #38bdf8;
    color: #020617;
}

/* ===== Responsive ===== */
@media (max-width: 600px) {
    nav {
        flex-direction: column;
        gap: 8px;
    }

    .container {
        width: 90%;
    }
}


    </style>
    </head>
    <body
        <header>
           <nav>
            <a href="PostWork.jsp"> Home </a>
            <a href="aboutus.jsp"> About Us</a>
            <a href="contactus.jsp"> Contact Us </a>
            <a href="home.jsp">Admin Login </a>
             <a href="Loginn.jsp">  Employer Login </a>
        </nav><br>
        </header>
        <div class="container">
            

        <h1> Easy Hire Network System </h1>
        <a href="PostWork.jsp"> Post Work (Employer)</a>
        <br><br>
        <a href="FindWork.jsp"> Find Work(Worker)</a>
        </div>
    </body>
</html>