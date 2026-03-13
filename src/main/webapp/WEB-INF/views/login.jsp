<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Login | Market Basket Analysis</title>

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
min-height:100vh;
}

/* NAVBAR */

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
bottom:-3px;
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

/* LOGIN SECTION */

.login-container{
display:flex;
align-items:center;
justify-content:center;
height:85vh;
}

/* FORM */

.modal-content{
background:white;
border-radius:15px;
padding:25px;
}

.modal-content h3{
color:black;
}

/* INPUTS */

.form-control::placeholder{
color:black;
}

/* LOGIN BUTTON */

.login-btn{
border-radius:25px;
padding:10px;
font-weight:500;
transition:0.3s;
}

.login-btn:hover{
transform:scale(1.05);
box-shadow:0 10px 20px rgba(0,0,0,0.4);
}

/* LINKS */

.auth-links{
font-size:14px;
margin-top:10px;
}

.auth-links a{
color:#0d6efd;
text-decoration:none;
}

.auth-links a:hover{
text-decoration:underline;
}

.text-center{
color:black;
}
@media (max-width:576px){

.login-container{
padding:20px;
height:auto;
}

.modal-content{
border-radius:10px;
width:100%;
}

}

</style>

</head>

<body>

<!-- NAVBAR -->

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
<a class="nav-link" href="contact">Contact</a>
</li>

<li class="nav-item">
<a class="nav-link active" href="login">Login</a>
</li>

</ul>

</div>
</div>

</nav>

<!-- LOGIN FORM -->

<div class="login-container">

<div class="col-md-4">

<div class="modal-content">


<h3 class="text-center mb-4">Login</h3>

<form  action="${pageContext.request.contextPath}/login" method ="POST">

<div class="mb-3">
<input type="text" class="form-control" name="username"  placeholder="Email Address">
</div>

<div class="mb-3">
<input type="password" class="form-control"  name="password"  placeholder="Password">
</div>

<button class="btn btn-primary w-100 login-btn">Login</button>

<div class="text-center auth-links">

<p class="mt-3">
<!--  
<a href="#">Register</a> |
<a href="#">Reset Password</a>
-->
</p>

</div>

</form>

</div>

</div>

</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>