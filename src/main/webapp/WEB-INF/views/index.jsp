<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Market Basket Analysis</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet">

<link
	href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600&display=swap"
	rel="stylesheet">

<style>
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	font-family: 'Poppins', sans-serif;
}

/* VIDEO BACKGROUND */
#bgVideo {
	position: fixed;
	top: 50%;
	left: 50%;
	min-width: 100%;
	min-height: 100%;
	transform: translate(-50%, -50%);
	object-fit: cover;
	z-index: -2;
}

/* DARK OVERLAY */
body::before {
	content: "";
	position: fixed;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	background: rgba(0, 0, 0, 0.65);
	z-index: -1;
}

/* NAVBAR */
.navbar {
	background: rgba(0, 0, 0, 0.6);
	backdrop-filter: blur(10px);
}

/* NAV LINKS (SAME AS SERVICES PAGE) */
.nav-link {
	position: relative;
	font-weight: 500;
	margin-right: 15px;
	transition: 0.3s;
}

.nav-link::after {
	content: "";
	position: absolute;
	width: 0%;
	height: 2px;
	left: 0;
	bottom: -3px;
	background: #0d6efd;
	transition: 0.4s;
}

.nav-link:hover::after {
	width: 100%;
}

.nav-link:hover {
	color: #0d6efd !important;
	transform: translateY(-2px);
}

/* LOGO */
.navbar-brand {
	font-weight: 700;
	font-size: 22px;
	letter-spacing: 2px;
	background: linear-gradient(90deg, #00dbde, #fc00ff, #00dbde);
	background-size: 200%;
	-webkit-background-clip: text;
	-webkit-text-fill-color: transparent;
	animation: gradientMove 4s linear infinite;
}

@
keyframes gradientMove { 0%{
	background-position: 0%
}

100
%
{
background-position
:
200%
}
}

/* HERO */
.hero {
	display: flex;
	align-items: center;
	justify-content: center;
	text-align: center;
	min-height: 90vh;
	color: white;
	padding: 20px;
	animation: fadeIn 1.5s ease;
}

.hero h1 {
	font-weight: 700;
	font-size: 60px;
	background: linear-gradient(90deg, #ffffff, #00c6ff, #ffffff);
	background-size: 200%;
	-webkit-background-clip: text;
	-webkit-text-fill-color: transparent;
	animation: titleGlow 3s ease-in-out infinite alternate, floatTitle 4s
		ease-in-out infinite;
}

.hero p {
	font-size: 20px;
	margin-top: 15px;
}

/* ANIMATIONS */
@
keyframes fadeIn {
	from {opacity: 0
}

to {
	opacity: 1
}

}
@
keyframes titleGlow {
	from {background-position: 0%
}

to {
	background-position: 200%
}

}
@
keyframes floatTitle { 0%{
	transform: translateY(0px)
}

50
%
{
transform
:
translateY(
-10px
)
}
100
%
{
transform
:
translateY(
0px
)
}
}

/* MOBILE */
@media ( max-width :768px) {
	.hero h1 {
		font-size: 40px;
	}
	.hero p {
		font-size: 16px;
	}
	.navbar-brand{
		font-size:21px;
	}
	
}
</style>

</head>

<body>

	<!-- VIDEO BACKGROUND -->

	<video autoplay muted playsinline id="bgVideo">
		<source src="<c:url value='/resources/IMG/bg_birds.mp4'/>"
			type="video/mp4">
	</video>

	<script>
		let video = document.getElementById("bgVideo");
		let playCount = 0;

		video.addEventListener("ended", function() {

			playCount++;

			if (playCount < 3) {
				video.play();
			}

		});
	</script>

	<!-- NAVBAR -->

	<nav class="navbar navbar-expand-lg navbar-dark">

		<div class="container">

			<a class="navbar-brand" href="home">Market Basket Analysis</a>

			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#menu">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="collapse navbar-collapse" id="menu">

				<ul class="navbar-nav ms-auto">

					<li class="nav-item"><a class="nav-link active" href="home">Home</a>
					</li>

					<li class="nav-item"><a class="nav-link" href="about">About</a>
					</li>

					<li class="nav-item"><a class="nav-link" href="services">Services</a>
					</li>

					<li class="nav-item"><a class="nav-link" href="contact">Contact</a>
					</li>

					<li class="nav-item"><a
						class="btn btn-primary ms-lg-3 mt-2 mt-lg-0" href="login">Login</a>
					</li>

				</ul>

			</div>

		</div>

	</nav>

	<!-- HERO SECTION -->

	<section class="hero">

		<div class="container">

			<h1>Market Basket Analysis</h1>

			<p>Discover customer buying patterns using intelligent data
				analysis and improve business decision making.</p>

			<a href="services" class="btn btn-info mt-4 px-4">Explore
				Services</a>

		</div>

	</section>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>