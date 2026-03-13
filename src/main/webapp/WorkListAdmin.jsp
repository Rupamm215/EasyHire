<%-- 
    Document   : WorkList
    Created on : 10 Dec 2025, 9:51:15 am
    Author     : USER
--%>

<%@page import="java.util.List"%>
<%@page import="com.mycompany.project1.Employer"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Work List | EasyHire</title>

<style>
:root{
  --bg:#0f172a;
  --card:#111827;
  --accent:#22c55e;
  --accent-2:#2563eb;
  --text:#e5e7eb;
  --muted:#9ca3af;
  --muted-2:#94a3b8;
  --radius:14px;
}

*{
  margin:0;
  padding:0;
  box-sizing:border-box;
  font-family:"Segoe UI",Tahoma,sans-serif;
}

body{
  min-height:100vh;
  color:var(--text);
  background:
    linear-gradient(rgba(2,6,23,0.75), rgba(2,6,23,0.75)),
    url("index.jpg") no-repeat center/cover fixed;
}

.wrap{
  max-width:1200px;
  margin:auto;
  padding:22px;
}

/* ===== NAVBAR ===== */
header{
  background:rgba(2,6,23,0.9);
  backdrop-filter:blur(6px);
  border-bottom:1px solid rgba(255,255,255,0.08);
}

.nav{
  display:flex;
  justify-content:space-between;
  align-items:center;
}

.logo{
  width:42px;
  height:42px;
  border-radius:50%;
  background:var(--accent);
  display:flex;
  align-items:center;
  justify-content:center;
  font-weight:800;
  color:#022c22;
}

nav ul{
  list-style:none;
  display:flex;
  gap:22px;
}

nav a{
  text-decoration:none;
  color:var(--muted);
  font-weight:600;
}

nav a:hover{
  color:#fff;
}

/* ===== HEADING ===== */
.heading{
  display:flex;
  justify-content:space-between;
  align-items:center;
  margin:26px 0;
  flex-wrap:wrap;
}

.heading h2{
  font-size:28px;
}

.sub{
  font-size:14px;
  color:var(--muted);
}

/* ===== GRID ===== */
.grid{
  display:grid;
  grid-template-columns:repeat(auto-fit,minmax(320px,1fr));
  gap:22px;
}

/* ===== CARD ===== */
.card{
  background:rgba(17,24,39,0.9);
  border-radius:var(--radius);
  padding:20px;
  box-shadow:0 12px 30px rgba(0,0,0,0.45);
  transition:transform .25s ease, box-shadow .25s ease;
}

.card:hover{
  transform:translateY(-6px);
  box-shadow:0 18px 40px rgba(0,0,0,0.6);
}

.top{
  display:flex;
  justify-content:space-between;
  align-items:flex-start;
  margin-bottom:14px;
}

.name{
  font-size:20px;
  font-weight:700;
}

.meta{
  font-size:13px;
  color:var(--muted);
}

.badge{
  background:rgba(34,197,94,0.15);
  color:var(--accent);
  padding:6px 12px;
  border-radius:999px;
  font-weight:700;
}

/* ===== DETAILS ===== */
.details{
  border-top:1px solid rgba(255,255,255,0.08);
  border-bottom:1px solid rgba(255,255,255,0.08);
  padding:12px 0;
  margin:12px 0;
}

.row{
  display:flex;
  justify-content:space-between;
  font-size:14px;
  margin-bottom:6px;
}

.label{
  color:var(--muted);
}

/* ===== BUTTON ===== */
.actions{
  display:flex;
  gap:12px;
  margin-top:12px;
}

.btn{
  padding:10px 16px;
  border-radius:10px;
  font-weight:700;
  text-decoration:none;
  font-size:14px;
}

.btn-accept{
  background:var(--accent);
  color:#022c22;
}

.btn:hover{
  opacity:0.9;
}

/* ===== EMPTY ===== */
.empty{
  text-align:center;
  padding:60px 20px;
  background:rgba(17,24,39,0.85);
  border-radius:var(--radius);
}

/* ===== FOOTER ===== */
footer{
  border-top:1px solid rgba(255,255,255,0.08);
  margin-top:40px;
  padding-top:16px;
  font-size:14px;
  color:var(--muted-2);
}
</style>
</head>

<body>

<header>
  <div class="wrap nav">
    <a href="home.jsp" style="display:flex;align-items:center;gap:12px;text-decoration:none;color:inherit">
      <div class="logo">EH</div>
      <div>
        <div style="font-weight:700;color:#fff">Easy Hire</div>
        <div style="font-size:12px;color:var(--muted-2)">Connect employers & workers — fast</div>
      </div>
    </a>

    <nav>
      <ul>
        <li><a href="home.jsp">Home</a></li>
        <li><a href="PostWork.jsp">Post Work</a></li>
        <li><a href="FindWork.jsp">Find Work</a></li>
      </ul>
    </nav>
  </div>
</header>

<main class="wrap">
  <div class="heading">
    <div>
      <h2>Work List</h2>
      <div class="sub">Available job requests posted by employers</div>
    </div>
    <div>
      <a href="PostWork.jsp" class="btn btn-accept">Post a new job</a>
    </div>
  </div>

  <div class="grid">
  <%
    List<Employer> WorkList = (List<Employer>) request.getAttribute("WorkList");
    if(WorkList != null && !WorkList.isEmpty()){
      for(Employer emp : WorkList){
  %>
    <article class="card">
      <div class="top">
        <div>
          <div class="name"><%= emp.getWorkType() %></div>
          <div class="meta">Posted by <strong><%= emp.getName() %></strong> — <%= emp.getLocation() %></div>
        </div>
        <div class="badge">₹ <%= emp.getBudget() %></div>
      </div>

      <div class="details">
        <div class="row"><span class="label">Mobile</span><span><%= emp.getMobileNo() %></span></div>
        <div class="row"><span class="label">Date</span><span><%= emp.getJobDate() %></span></div>
        <div class="row"><span class="label">Job ID</span><span><%= emp.getId() %></span></div>
      </div>

      <div class="actions">
        <a class="btn btn-accept" href="Acceptjob.jsp?id=<%= emp.getId() %>">Accept Job</a>
      </div>
      <div class="actions">
       <a href="DeleteEmployerController?id=<%= emp.getId() %>"onclick="return confirm('Are you sure you want to delete this worker?');">
               Delete
            </a>
                </div>
    </article>
  <%
      }
    } else {
  %>
  </div>

  <div class="empty">
    <h3>No work found</h3>
    <p>Try posting a job or check again later.</p>
  </div>
  <% } %>
</main>

<footer class="wrap">
  <div style="display:flex;justify-content:space-between;flex-wrap:wrap">
    <div>© Easy Hire Network • Built for communities</div>
    <div style="display:flex;gap:12px">
      <a href="home.jsp" style="color:var(--muted-2);text-decoration:none">Home</a>
      <a href="FindWork.jsp" style="color:var(--muted-2);text-decoration:none">Find Work</a>
    </div>
  </div>
</footer>

</body>
</html>
