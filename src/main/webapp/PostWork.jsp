<%-- 
    Document   : PostWork
    Created on : 10 Dec 2025
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Post Work | EasyHire</title>

    <style>
        /* ================= RESET ================= */
        *{
            margin:0;
            padding:0;
            box-sizing:border-box;
            font-family:'Poppins','Segoe UI',sans-serif;
        }

        /* ================= BODY BACKGROUND ================= */
        body{
            min-height:100vh;
            background:
              linear-gradient(rgba(0,0,0,0.55), rgba(0,0,0,0.55)),
              url("index.jpg") no-repeat center/cover fixed;
        }

        /* ================= NAVBAR ================= */
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
            letter-spacing:1px;
        }

        .navbar nav a{
            color:#e5e7eb;
            text-decoration:none;
            margin-left:28px;
            font-size:16px;
            font-weight:600;
            letter-spacing:0.4px;
            transition:0.3s;
        }

        .navbar nav a:hover{
            color:#ffffff;
            border-bottom:2px solid #fff;
            padding-bottom:4px;
        }

        /* ================= PAGE WRAPPER ================= */
        .page-wrap{
            min-height:calc(100vh - 90px);
            display:flex;
            justify-content:center;
            align-items:center;
            padding:40px 20px;
        }

        /* ================= FORM CARD ================= */
        .container{
            background:rgba(255,255,255,0.97);
            width:100%;
            max-width:520px;
            padding:40px;
            border-radius:18px;
            box-shadow:0 28px 65px rgba(0,0,0,0.45);
        }

        /* ================= FORM HEADER ================= */
        .header{
            text-align:center;
            margin-bottom:30px;
        }

        .header h1{
            font-size:26px;
            font-weight:700;
            color:#1f2937;
            letter-spacing:1px;
        }

        /* ================= INPUT GROUP ================= */
        .input-group{
            margin-bottom:18px;
        }

        label{
            display:block;
            margin-bottom:8px;
            font-size:14px;
            font-weight:600;
            color:#374151;
        }

        input[type="text"],
        input[type="date"],
        select{
            width:100%;
            padding:13px 15px;
            border:1px solid #d1d5db;
            border-radius:8px;
            font-size:14px;
            outline:none;
            transition:0.25s;
        }

        input:focus,
        select:focus{
            border-color:#6366f1;
            box-shadow:0 0 0 3px rgba(99,102,241,0.18);
        }

        /* ================= CHECKBOX GRID ================= */
        .checkbox-container{
            display:grid;
            grid-template-columns:1fr 1fr;
            gap:10px;
            padding:12px;
            border:1px solid #e5e7eb;
            border-radius:8px;
        }

        .checkbox-item{
            display:flex;
            align-items:center;
            font-size:14px;
            color:#374151;
        }

        .checkbox-item input{
            margin-right:8px;
            accent-color:#6366f1;
        }

        /* ================= BUTTON ================= */
        .btn-submit{
            width:100%;
            padding:14px;
            margin-top:20px;
            background:linear-gradient(90deg,#2563eb,#7c3aed);
            color:white;
            border:none;
            border-radius:30px;
            font-size:15px;
            font-weight:700;
            letter-spacing:1px;
            cursor:pointer;
            transition:0.3s;
        }

        .btn-submit:hover{
            transform:translateY(-2px);
            box-shadow:0 14px 30px rgba(99,102,241,0.45);
        }

        /* ================= RESPONSIVE ================= */
        @media(max-width:480px){
            .container{padding:26px;}
            .checkbox-container{grid-template-columns:1fr;}
        }
    </style>
</head>

<body>

<!-- ================= NAVBAR ================= -->
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

<!-- ================= FORM ================= -->
<div class="page-wrap">
    <div class="container">

        <div class="header">
            <h1>Post a Work</h1>
        </div>

        <form action="FindWorkerServlet" onsubmit="return result()">

            <div class="input-group">
                <label>Name</label>
                <input type="text" name="name" id="name" placeholder="Enter full name">
            </div>

            <div class="input-group">
                <label>Mobile No</label>
                <input type="text" name="mobileno" id="mobileno" maxlength="10" placeholder="Enter 10-digit number">
            </div>

            <div class="input-group">
                <label>Work Type</label>
                <div class="checkbox-container">
                    <label class="checkbox-item">
                        <input type="checkbox" name="worktype" value="Plumbing"> Plumbing
                    </label>
                    <label class="checkbox-item">
                        <input type="checkbox" name="worktype" value="Painting"> Painting
                    </label>
                    <label class="checkbox-item">
                        <input type="checkbox" name="worktype" value="Cleaning"> Cleaning
                    </label>
                    <label class="checkbox-item">
                        <input type="checkbox" name="worktype" value="Carpenter"> Carpenter
                    </label>
                    <label class="checkbox-item">
                        <input type="checkbox" name="worktype" value="Other"> Other
                    </label>
                </div>
            </div>

            <div class="input-group">
                <label>Location</label>
                <select name="location" id="location">
                    <option value="">Select City</option>
                    <option>Amravati</option>
                    <option>Yavatmal</option>
                    <option>Nagpur</option>
                    <option>Wardha</option>
                </select>
            </div>

            <div class="input-group">
                <label>Budget (₹)</label>
                <input type="text" name="budget" id="budget" placeholder="Ex: 5000">
            </div>

            <div class="input-group">
                <label>Date</label>
                <input type="date" name="date" id="date">
            </div>

            <input type="submit" value="Submit Work" class="btn-submit">
        </form>

    </div>
</div>

<script>
function result(){
    let name = document.getElementById("name").value.trim();
    let mobileno = document.getElementById("mobileno").value.trim();
    let worktype = document.querySelectorAll('input[name="worktype"]:checked');
    let location = document.getElementById("location").value;
    let budget = document.getElementById("budget").value.trim();
    let date = document.getElementById("date").value;

    if(name === ""){
        alert("Name cannot be blank");
        return false;
    }
    if(isNaN(mobileno) || mobileno.length !== 10){
        alert("Enter valid mobile number");
        return false;
    }
    if(worktype.length === 0){
        alert("Select at least one work type");
        return false;
    }
    if(location === ""){
        alert("Select location");
        return false;
    }
    if(budget === ""){
        alert("Enter budget");
        return false;
    }
    if(date === ""){
        alert("Select date");
        return false;
    }
    return true;
}
</script>

</body>
</html>
