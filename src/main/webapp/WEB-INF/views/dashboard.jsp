<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Admin Dashboard | Market Basket Analysis</title>

<!-- Bootstrap -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

<!-- Google Font -->
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600&display=swap" rel="stylesheet">

<!-- Chart.js -->
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>

<style>

*{
margin:0;
padding:0;
box-sizing:border-box;
font-family:'Poppins',sans-serif;
}

body{
background:#f4f6fb;
}

/* SIDEBAR */

.sidebar{
width:250px;
height:100vh;
background:#111827;
position:fixed;
left:0;
top:0;
color:white;
padding-top:20px;
transition:0.3s;
}

.sidebar h4{
text-align:center;
margin-bottom:30px;
}

.sidebar a{
display:block;
padding:12px 20px;
color:#cbd5e1;
text-decoration:none;
transition:0.3s;
}

.sidebar a:hover{
background:#1f2937;
color:white;
padding-left:30px;
}

/* MAIN CONTENT */

.main{
margin-left:250px;
padding:20px;
}

/* TOPBAR */

.topbar{
background:white;
padding:12px 20px;
border-radius:10px;
box-shadow:0 2px 10px rgba(0,0,0,0.08);
margin-bottom:20px;
}

/* CARDS */

.card{
border:none;
border-radius:12px;
box-shadow:0 4px 12px rgba(0,0,0,0.05);
}

.stat-number{
font-size:28px;
font-weight:600;
}

/* CHART */

.chart-box{
background:white;
padding:20px;
border-radius:12px;
box-shadow:0 4px 12px rgba(0,0,0,0.05);
}

/* TABLE */

.table-box{
background:white;
padding:20px;
border-radius:12px;
box-shadow:0 4px 12px rgba(0,0,0,0.05);
}

/* MOBILE */

@media(max-width:991px){

.sidebar{
left:-250px;
}

.sidebar.active{
left:0;
}

.main{
margin-left:0;
}

}

</style>

</head>

<body>

<!-- SIDEBAR -->

<div class="sidebar" id="sidebar">

<h4>Admin Panel</h4>

<a href="dashboard">Dashboard</a>
<a href="#">Products</a>
<a href="#">Transactions</a>
<a href="#">Analysis</a>
<a href="#">Users</a>
<a href="#">Upload Dataset</a>
<a href="home">Logout</a>

</div>

<!-- MAIN -->

<div class="main">

<!-- TOPBAR -->

<div class="topbar d-flex justify-content-between align-items-center">

<button class="btn btn-dark d-lg-none" onclick="toggleSidebar()">☰</button>

<h5 class="mb-0">Market Basket Dashboard</h5>

<div class="dropdown">

<button class="btn btn-light dropdown-toggle" data-bs-toggle="dropdown">
Admin
</button>


<ul class="dropdown-menu dropdown-menu-end">
<li><a class="dropdown-item" href="adminprofile">Profile</a></li>
<li><a class="dropdown-item" href="home">Logout</a></li>
</ul>

</div>

</div>

<!-- DASHBOARD CARDS -->

<div class="row g-4 mb-4">

<div class="col-md-3 col-sm-6">
<div class="card p-3">
<h6>Total Transactions</h6>
<div class="stat-number">1250</div>
</div>
</div>

<div class="col-md-3 col-sm-6">
<div class="card p-3">
<h6>Total Products</h6>
<div class="stat-number">320</div>
</div>
</div>

<div class="col-md-3 col-sm-6">
<div class="card p-3">
<h6>Total Users</h6>
<div class="stat-number">540</div>
</div>
</div>

<div class="col-md-3 col-sm-6">
<div class="card p-3">
<h6>Rules Generated</h6>
<div class="stat-number">85</div>
</div>
</div>

</div>

<!-- CHART + DATASET -->

<div class="row g-4 mb-4">

<!-- PRODUCT CHART -->

<div class="col-lg-8">

<div class="chart-box">

<h5 class="mb-3">Top Selling Products</h5>

<canvas id="productChart"></canvas>

</div>

</div>
</div>



</div>

<!-- JAVASCRIPT -->

<script>

function toggleSidebar(){
document.getElementById("sidebar").classList.toggle("active");
}

const ctx = document.getElementById('productChart');

new Chart(ctx,{
type:'bar',
data:{
labels:['Milk','Bread','Butter','Eggs','Rice'],
datasets:[{
label:'Product Frequency',
data:[120,90,70,60,40],
backgroundColor:[
'#0d6efd',
'#198754',
'#ffc107',
'#dc3545',
'#6610f2'
]
}]
}
});

</script>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

</body>

</html>