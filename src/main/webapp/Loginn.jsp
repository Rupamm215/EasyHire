<%-- 
    Document   : Loginn
    Created on : 17 Dec 2025
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Employer Login | EasyHire</title>

    <style>
        /* ===== RESET ===== */
        *{
            margin:0;
            padding:0;
            box-sizing:border-box;
            font-family:"Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
        }

        /* ===== BACKGROUND ===== */
        body{
            min-height:100vh;
            background:
              linear-gradient(rgba(0,0,0,0.55), rgba(0,0,0,0.55)),
              url("index.jpg") no-repeat center/cover fixed;
            display:flex;
            align-items:center;
            justify-content:center;
        }

        /* ===== LOGIN CARD ===== */
        .login-box{
            width:380px;
            background:#ffffff;
            padding:40px;
            border-radius:14px;
            box-shadow:0 20px 45px rgba(0,0,0,0.35);
        }

        .login-box h2{
            text-align:center;
            margin-bottom:25px;
            color:#1f2937;
            font-size:26px;
            font-weight:700;
        }

        /* ===== FORM ===== */
        .form-group{
            margin-bottom:18px;
        }

        label{
            display:block;
            margin-bottom:6px;
            font-weight:600;
            color:#374151;
        }

        input[type="text"]{
            width:100%;
            padding:12px 14px;
            border-radius:8px;
            border:1.5px solid #d1d5db;
            font-size:15px;
            outline:none;
            transition:0.3s;
        }

        input[type="text"]:focus{
            border-color:#6366f1;
            box-shadow:0 0 0 3px rgba(99,102,241,0.2);
        }

        /* ===== BUTTON ===== */
        input[type="submit"]{
            width:100%;
            padding:13px;
            margin-top:10px;
            border:none;
            border-radius:10px;
            background:linear-gradient(90deg,#2563eb,#7c3aed);
            color:white;
            font-size:16px;
            font-weight:600;
            cursor:pointer;
            transition:0.3s;
        }

        input[type="submit"]:hover{
            transform:translateY(-1px);
            box-shadow:0 10px 25px rgba(0,0,0,0.25);
        }

        /* ===== ERROR MESSAGE ===== */
        .error{
            margin-top:15px;
            text-align:center;
            color:#dc2626;
            font-weight:600;
        }
    </style>
</head>

<body>

    <div class="login-box">
        <h2>Employer Login</h2>

        <form action="EmployerLoginServlet" method="post">
            <div class="form-group">
                <label>Username</label>
                <input type="text" name="username" required>
            </div>

            <div class="form-group">
                <label>Mobile No</label>
                <input type="text" name="mobileno" required>
            </div>

            <input type="submit" value="Login">
        </form>

        <div class="error">
            ${errorMessage}
        </div>
    </div>

</body>
</html>
