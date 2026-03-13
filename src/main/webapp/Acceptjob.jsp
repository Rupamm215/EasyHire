<%-- 
    Document   : Acceptjob
    Created on : 10 Dec 2025, 9:53:45 am
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Accept Job</title>

<style>
:root{
  --bg:#f4f6fb;
  --card:#ffffff;
  --primary:#7c3aed;
  --text:#1f2937;
  --muted:#6b7280;
  --radius:14px;
}

/* ===== Reset ===== */
*{
  margin:0;
  padding:0;
  box-sizing:border-box;
  font-family:"Segoe UI",Tahoma,sans-serif;
}

/* ===== Page ===== */
body{
  background:var(--bg);
  min-height:100vh;
  display:flex;
  justify-content:center;
  align-items:center;
}

/* ===== Center Card ===== */
.details-card{
  width:100%;
  max-width:420px;
  background:var(--card);
  border-radius:var(--radius);
  padding:28px;
  box-shadow:0 18px 40px rgba(0,0,0,.15);
}

/* ===== Heading ===== */
.details-card h2{
  text-align:center;
  margin-bottom:22px;
  color:var(--text);
  font-size:24px;
}

/* ===== Input Field ===== */
.field{
  margin-bottom:16px;
}

.field label{
  display:block;
  font-size:14px;
  font-weight:600;
  color:var(--muted);
  margin-bottom:6px;
}

.field input{
  width:100%;
  padding:11px 12px;
  border-radius:10px;
  border:1px solid #d1d5db;
  font-size:15px;
  outline:none;
}

.field input:focus{
  border-color:var(--primary);
}

/* ===== Button ===== */
.btn-submit{
  width:100%;
  padding:12px;
  margin-top:10px;
  background:var(--primary);
  color:#fff;
  border:none;
  border-radius:10px;
  font-size:16px;
  font-weight:700;
  cursor:pointer;
  transition:0.25s ease;
}

.btn-submit:hover{
  background:#6d28d9;
}
body{
  background:
    linear-gradient(rgba(0,0,0,0.55), rgba(0,0,0,0.55)),
    url("index.jpg") no-repeat center center fixed;
  background-size: cover;
  min-height:100vh;
  display:flex;
  justify-content:center;
  align-items:center;
}

</style>
</head>

<body>

<%
    int jobid = Integer.parseInt(request.getParameter("id"));
%>

<div class="details-card">
    <h2>Worker Details</h2>

    <form action="AcceptJobServlet" onsubmit="return validateForm()">

        <!-- Job ID -->
        <div class="field">
            <label>Job ID</label>
            <input type="text" value="<%= jobid %>" readonly>
            <input type="hidden" name="postId" value="<%= jobid %>">
        </div>

        <!-- Worker Name -->
        <div class="field">
            <label>Worker Name</label>
            <input type="text" name="wname" id="wname" placeholder="Enter worker name">
        </div>

        <!-- Worker Mobile -->
        <div class="field">
            <label>Worker Mobile Number</label>
            <input type="text" name="wmobileno" id="wmobileno" placeholder="Enter 10-digit mobile number">
        </div>

        <!-- Submit -->
        <button type="submit" class="btn-submit">Submit Details</button>
    </form>
</div>

<script>
function validateForm(){
    let name = document.getElementById("wname").value.trim();
    let mobile = document.getElementById("wmobileno").value.trim();

    if(name === ""){
        alert("Please enter worker name");
        return false;
    }
    if(isNaN(mobile) || mobile.length !== 10){
        alert("Please enter a valid 10-digit mobile number");
        return false;
    }
    return true;
}
</script>

</body>
</html>