<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Kareem Job Portal</title>

	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
	<link rel="stylesheet" href="style.css">
	<link rel="stylesheet" href="style1.css">

	<style>
		.navbar-custom {
			background-color: #0d6efd; /* Bootstrap primary color */
		}
		.navbar-custom .navbar-brand,
		.navbar-custom .nav-link {
			color: #ffffff;
		}
		.navbar-custom .nav-link:hover {
			color: #d1e3ff;
		}
		.card-custom {
			background-color: #f8f9fa; /* Light background */
			border: none;
			box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
			transition: transform 0.3s;
		}
		.card-custom:hover {
			transform: translateY(-5px);
		}
		.btn-custom {
			background-color: #0d6efd;
			color: white;
			border: none;
		}
		.btn-custom:hover {
			background-color: #0b5ed7;
		}
	</style>
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-custom">
	<div class="container">
		<a class="navbar-brand fs-2 fw-bold" href="#">Kareem Job Portal</a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
				aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarNav">
			<ul class="navbar-nav ms-auto">
				<li class="nav-item">
					<a class="nav-link" href="home">Home</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="viewalljobs">All Jobs</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="https://www.facebook.com/KareemEmadElfarargi?locale=ar_AR" target="_blank">Contact</a>
				</li>
			</ul>
		</div>
	</div>
</nav>

<section class="py-5">
	<div class="container">
		<div class="row g-4">
			<!-- View All Jobs Card -->
			<div class="col-md-6">
				<div class="card card-custom text-center p-4">
					<h5 class="card-title mb-3">Browse Opportunities</h5>
					<a href="/viewalljobs" class="btn btn-custom">View All Jobs</a>
				</div>
			</div>

			<!-- Add Job Card -->
			<div class="col-md-6">
				<div class="card card-custom text-center p-4">
					<h5 class="card-title mb-3">Post a New Job</h5>
					<a href="/addjob" class="btn btn-custom">Add Job</a>
				</div>
			</div>
		</div>
	</div>
</section>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</body>
</html>
