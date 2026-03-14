<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Admin Profile | Market Basket Analysis</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600&display=swap" rel="stylesheet">

<style>

body{
font-family:'Poppins',sans-serif;
background:linear-gradient(135deg,#1e3c72,#2a5298);
min-height:100vh;
color:white;
}

/* TITLE */

.page-title{
text-align:center;
font-weight:600;
margin-top:40px;
margin-bottom:40px;
letter-spacing:1px;
animation:fadeDown 1s ease;
}

/* PROFILE CARD */

.profile-card{
background:rgba(255,255,255,0.1);
backdrop-filter:blur(15px);
border-radius:15px;
padding:30px;
text-align:center;
transition:0.4s;
box-shadow:0 10px 25px rgba(0,0,0,0.3);
animation:fadeUp 1s ease;
}

.profile-card:hover{
transform:translateY(-10px) scale(1.02);
box-shadow:0 15px 35px rgba(0,0,0,0.4);
}

/* PROFILE IMAGE */

.profile-img{
width:130px;
height:130px;
border-radius:50%;
object-fit:cover;
border:4px solid white;
margin-bottom:15px;
transition:0.3s;
}

.profile-img:hover{
transform:scale(1.1);
}

/* SOCIAL LINKS */

.social a{
color:white;
font-size:18px;
margin:0 10px;
transition:0.3s;
}

.social a:hover{
color:#00e0ff;
transform:scale(1.2);
}

/* ANIMATION */

@keyframes fadeUp{
from{opacity:0; transform:translateY(30px);}
to{opacity:1; transform:translateY(0);}
}

@keyframes fadeDown{
from{opacity:0; transform:translateY(-30px);}
to{opacity:1; transform:translateY(0);}
}

/* MOBILE */

@media(max-width:768px){

.profile-card{
margin-bottom:25px;
}

}

</style>

</head>

<body>

<div class="container">

<h2 class="page-title">Admin Profile</h2>

<div class="row justify-content-center g-4">

<!-- MEMBER 1 -->

<div class="col-lg-4 col-md-6">

<div class="profile-card">

<img src="resources/IMG/profile-pic.png" class="profile-img">

<h4>Tushar Patil</h4>

<p>MCA Student | Java Developer</p>

<p>
Passionate about backend development and data analysis.
Worked on Market Basket Analysis using Java, Spring and MySQL.
</p>

<div class="social">

<a href="https://www.linkedin.com/in/tushar-patil-16b473261/"><i class="bi bi-linkedin"></i></a>
<a href="https://github.com/Tusharpatil7007/"><i class="bi bi-github"></i></a>

</div>

</div>

</div>

<!-- MEMBER 2 -->

<div class="col-lg-4 col-md-6">

<div class="profile-card">

<img src="resources/images/member2.jpg" class="profile-img">

<h4>Bhushan Patil</h4>

<p>MCA Student | Data project </p>

<p>
Focused on data processing, transaction analysis and
association rule mining for Market Basket Analysis.
</p>

<div class="social">

<a href="#"><i class="bi bi-linkedin"></i></a>
<a href="#"><i class="bi bi-github"></i></a>

</div>

</div>

</div>

</div>

</div>

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css">

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>