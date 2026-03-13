<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>About | Market Basket Analysis</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600&display=swap" rel="stylesheet">

<style>

*{
margin:0;
padding:0;
box-sizing:border-box;
font-family:'Poppins',sans-serif;
}

/* Background */

body{
background:#0a0705;
color:white;
}

/* Navbar */

.navbar{
background:rgba(0,0,0,0.6);
backdrop-filter:blur(10px);
}
.nav-link{
position:relative;
font-weight:500;
margin-right:15px;
transition:0.3s;
}

/* Animated underline */

.nav-link::after{
content:"";
position:absolute;
width:0%;
height:2px;
left:0;
bottom:0;
background:#0d6efd;
transition:0.4s;
}

.nav-link:hover::after{
width:100%;
}

.nav-link:hover{
color:#0d6efd !important;
transform:translateY(-2px);
}

.navbar-brand{
font-weight:700;
font-size:22px;
letter-spacing:2px;
background: linear-gradient(90deg,#00dbde,#fc00ff,#00dbde);
background-size:200%;
-webkit-background-clip:text;
-webkit-text-fill-color:transparent;
animation: gradientMove 4s linear infinite;
}

@keyframes gradientMove{
0%{background-position:0%}
100%{background-position:200%}
}

/* Hero Section */

.about-hero{
text-align:center;
padding:50px 20px;
animation:fadeIn 1.5s ease;
}
.about-hero h1{
font-weight:700;
font-size:50px;
background:linear-gradient(90deg,#ffffff,#00c6ff,#ffffff);
background-size:200%;
-webkit-background-clip:text;
-webkit-text-fill-color:transparent;
animation:titleGlow 3s ease-in-out infinite alternate,
         floatTitle 4s ease-in-out infinite;
}
@keyframes titleGlow{
from{
background-position:0%;
}
to{
background-position:200%;
}
}

@keyframes floatTitle{
0%{
transform:translateY(0px);
}
50%{
transform:translateY(-10px);
}
100%{
transform:translateY(0px);
}
}

.about-hero p{
font-size:18px;
max-width:750px;
margin:auto;
opacity:0.9;
}

/* Cards */

.info-section{
padding:60px 0;
}

.info-card{
background:rgba(255,255,255,0.08);
border-radius:15px;
padding:30px;
transition:0.4s;
height:100%;
backdrop-filter:blur(10px);
}

.info-card:hover{
transform:translateY(-10px);
box-shadow:0 10px 30px rgba(0,0,0,0.5);
}

.info-card h4{
margin-bottom:15px;
font-weight:600;
}

.info-card p{
font-size:15px;
opacity:0.9;
}

/* Features */

.feature-section{
padding:60px 0;
text-align:center;

}

.feature-box{
padding:30px;



}

.feature-box h5{
margin-top:15px;
font-weight:600;
}

/* Footer */

.footer{
text-align:center;
padding:20px;
background:rgba(0,0,0,0.6);
margin-top:50px;
}

/* Animations */

@keyframes fadeIn{
from{opacity:0}
to{opacity:1}
}

</style>

</head>

<body>

<!-- Navbar -->

<nav class="navbar navbar-expand-lg navbar-dark">
<div class="container">

<a class="navbar-brand" href="home">Market Basket Analysis</a>

<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#menu">
<span class="navbar-toggler-icon"></span>
</button>

<div class="collapse navbar-collapse" id="menu">

<ul class="navbar-nav ms-auto">

<li class="nav-item">
<a class="nav-link" href="home">Home</a>
</li>

<li class="nav-item">
<a class="nav-link active" href="about">About</a>
</li>

<li class="nav-item">
<a class="nav-link" href="services">Services</a>
</li>

<li class="nav-item">
<a class="nav-link" href="contact">Contact</a>
</li>

</ul>

</div>
</div>
</nav>

<!-- Hero Section -->

<section class="about-hero">

<h1>About Market Basket Analysis</h1>

<p>
Market Basket Analysis is a powerful data mining technique used to discover
relationships between products purchased together by customers. It helps
businesses understand buying behavior and improve product recommendations,
store layout, and sales strategies.
</p>

</section>

<!-- Information Cards -->

<section class="info-section">

<div class="container">

<div class="row g-4">

<div class="col-md-4">

<div class="info-card">

<h4>📊 What is Market Basket Analysis?</h4>

<p>
Market Basket Analysis identifies associations between products by analyzing
transaction data. It helps retailers understand which products customers
frequently purchase together.
</p>

</div>

</div>

<div class="col-md-4">

<div class="info-card">

<h4>💡 Why It Is Important</h4>

<p>
This technique improves product placement, cross-selling strategies,
recommendation systems, and promotional planning, helping businesses
increase revenue and customer satisfaction.
</p>

</div>

</div>

<div class="col-md-4">

<div class="info-card">

<h4>⚙ Technologies Used</h4>

<p>
This project uses Java, Spring MVC, JSP, Bootstrap, and Data Analysis
algorithms such as Apriori to discover meaningful product associations.
</p>

</div>

</div>

</div>

</div>

</section>

<!-- Features -->

<section class="feature-section">

<div class="container">

<h2 class="mb-5">Project Features</h2>

<div class="row gap-0">

<div class="col-md-3 feature-box border">

<h5>Data Analysis</h5>
<p>Analyze transaction data to identify customer purchasing patterns.</p>

</div>

<div class="col-md-3 feature-box border">

<h5>Association Rules</h5>
<p>Generate rules that show relationships between different products.</p>

</div>

<div class="col-md-3 feature-box border">

<h5>Business Insights</h5>
<p>Provide valuable insights to improve marketing and product placement.</p>

</div>

<div class="col-md-3 feature-box border">

<h5>Interactive Dashboard</h5>
<p>Visualize analytics through user-friendly dashboards and reports.</p>

</div>

</div>

</div>

</section>

<!-- Footer -->

<div class="footer">

<p>© 2026 Market Basket Analysis Project</p>

</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>