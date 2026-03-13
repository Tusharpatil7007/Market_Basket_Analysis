<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Contact | Market Basket Analysis</title>

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

.contact-hero{
text-align:center;
padding:10px 20px;
animation:fadeIn 1.5s ease;
}

.contact-hero h1{
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

/* Contact Section */

.contact-section{
padding:50px 0;
}

.contact-card{

background:rgba(255,255,255,0.08);
padding:40px;
border-radius:15px;
backdrop-filter:blur(10px);
transition:0.4s;

}

.contact-card:hover{
transform:translateY(-8px);
box-shadow:0 15px 40px rgba(0,0,0,0.5);
}

/* Form */

.form-control{

background:rgba(255,255,255,0.1);
border:none;
color:white;

}

.form-control::placeholder{
color:#ccc;
}

.form-control:focus{
box-shadow:none;
background:rgba(255,255,255,0.15);
color:white;
}

/* Button */

.btn-send{

margin-top:10px;
border-radius:25px;
padding:10px 30px;
transition:0.3s;

}

.btn-send:hover{

transform:scale(1.08);
box-shadow:0 10px 25px rgba(0,0,0,0.5);

}

/* Contact Info */

.contact-info{

background:rgba(255,255,255,0.08);
padding:40px;
border-radius:15px;
height:100%;
backdrop-filter:blur(10px);

}

.info-item{
margin-bottom:20px;
}

.info-item h5{
font-weight:600;
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
<a class="nav-link" href="services">Services</a>
</li>

<li class="nav-item">
<a class="nav-link active" href="contact">Contact</a>
</li>

</ul>

</div>
</div>
</nav>

<!-- Hero -->

<section class="contact-hero">

<h1>Contact Us</h1>
<p>Have questions about Market Basket Analysis? Reach out to us anytime.</p>

</section>

<!-- Contact Section -->

<section class="contact-section">

<div class="container">

<div class="row g-4">

<!-- Contact Form -->

<div class="col-md-7">

<div class="contact-card">

<h3 class="mb-4">Send Message</h3>

<form>

<div class="mb-3">
<input type="text" class="form-control" placeholder="Your Name">
</div>

<div class="mb-3">
<input type="email" class="form-control" placeholder="Your Email">
</div>

<div class="mb-3">
<input type="text" class="form-control" placeholder="Subject">
</div>

<div class="mb-3">
<textarea class="form-control" rows="5" placeholder="Your Message"></textarea>
</div>

<button class="btn btn-primary btn-send">Send Message</button>

</form>

</div>

</div>

<!-- Contact Info -->

<div class="col-md-5">

<div class="contact-info">

<h3 class="mb-4">Contact Information</h3>

<div class="info-item">
<h5>📍 Address</h5>
<p>Pune, Maharashtra, India</p>
</div>

<div class="info-item">
<h5>📧 Email</h5>
<p>support@marketbasket.com</p>
</div>

<div class="info-item">
<h5>📞 Phone</h5>
<p>+91 9876543210</p>
</div>

<div class="info-item">
<h5>⏰ Working Hours</h5>
<p>Mon - Fri : 9 AM - 6 PM</p>
</div>

</div>

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