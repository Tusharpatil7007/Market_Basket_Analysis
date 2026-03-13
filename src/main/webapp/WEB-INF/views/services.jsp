<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Services | Market Basket Analysis</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600&display=swap" rel="stylesheet">

<style>

*{
margin:0;
padding:0;
box-sizing:border-box;
font-family:'Poppins',sans-serif;
}

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

/* Hero */

.service-hero{
text-align:center;
padding:50px 20px;
animation:fadeIn 1.5s ease;
}

.service-hero h1{
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

.service-hero p{
max-width:700px;
margin:auto;
opacity:0.9;
}

/* Services Section */

.services{
padding:60px 0;
}

.service-card{

background:rgba(255,255,255,0.08);
border-radius:15px;
padding:35px;
text-align:center;
transition:0.4s;
height:100%;
backdrop-filter:blur(10px);

}

.service-card:hover{

transform:translateY(-12px) scale(1.03);
box-shadow:0 15px 40px rgba(0,0,0,0.5);

}

.service-icon{
font-size:45px;
margin-bottom:15px;
}

.service-card h4{
font-weight:600;
margin-bottom:10px;
}

.service-card p{
font-size:14px;
opacity:0.9;
}

/* CTA */

.cta-section{

text-align:center;
padding:70px 20px;

}

.cta-btn{

margin-top:20px;
padding:10px 28px;
border-radius:25px;
font-weight:500;
transition:0.3s;

}

.cta-btn:hover{

transform:scale(1.08);
box-shadow:0 10px 25px rgba(0,0,0,0.5);

}

/* Footer */

.footer{
text-align:center;
padding:20px;
background:rgba(0,0,0,0.6);
margin-top:50px;
}

/* Animation */

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
<a class="nav-link" href="about">About</a>
</li>

<li class="nav-item">
<a class="nav-link active" href="services">Services</a>
</li>

<li class="nav-item">
<a class="nav-link" href="contact">Contact</a>
</li>

</ul>

</div>
</div>
</nav>

<!-- Hero -->

<section class="service-hero">

<h1>Our Services</h1>

<p>
We provide powerful analytics and intelligent insights using Market Basket Analysis
to help businesses understand customer purchasing behavior and optimize
their sales strategies.
</p>

</section>

<!-- Services -->

<section class="services">

<div class="container">

<div class="row g-4">

<div class="col-md-4">

<div class="service-card">

<div class="service-icon">📊</div>

<h4>Transaction Analysis</h4>

<p>
Analyze large transaction datasets to identify purchasing patterns
and uncover valuable customer insights.
</p>

</div>

</div>

<div class="col-md-4">

<div class="service-card">

<div class="service-icon">🛒</div>

<h4>Product Association</h4>

<p>
Discover relationships between products using advanced
association rule mining algorithms.
</p>

</div>

</div>

<div class="col-md-4">

<div class="service-card">

<div class="service-icon">📈</div>

<h4>Sales Optimization</h4>

<p>
Improve marketing strategies and increase sales by
understanding product combinations.
</p>

</div>

</div>

<div class="col-md-4">

<div class="service-card">

<div class="service-icon">🤖</div>

<h4>Recommendation System</h4>

<p>
Suggest relevant products to customers based on
their purchase behavior and trends.
</p>

</div>

</div>

<div class="col-md-4">

<div class="service-card">

<div class="service-icon">📉</div>

<h4>Data Visualization</h4>

<p>
Visualize patterns and analytics results using
interactive dashboards and reports.
</p>

</div>

</div>

<div class="col-md-4">

<div class="service-card">

<div class="service-icon">⚡</div>

<h4>Business Intelligence</h4>

<p>
Generate actionable insights that help companies
make data-driven decisions.
</p>

</div>

</div>

</div>

</div>

</section>

<!-- Call To Action -->

<section class="cta-section">

<h2>Want to Discover Customer Buying Patterns?</h2>

<p>Start using Market Basket Analysis to unlock powerful insights.</p>

<a href="contact" class="btn btn-primary cta-btn">Get Started</a>

</section>

<!-- Footer -->

<div class="footer">

<p>© 2026 Market Basket Analysis Project</p>

</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>