<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Job Post List</title>
    <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
            rel="stylesheet"
            integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
            crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="style.css">
    <style>
        /* Custom styles */
        .navbar {
            background-color: #343a40; /* Dark background for navbar */
        }
        .navbar-brand {
            color: #f8f9fa; /* Light text color */
        }
        .navbar-nav .nav-link {
            color: #f8f9fa !important; /* Light text color for nav links */
        }
        .navbar-nav .nav-link:hover {
            color: #ffc107 !important; /* Yellow color on hover */
        }
        .card {
            border: 2px solid #343a40; /* Dark border */
            background-color: #2d2d2d; /* Dark card background */
        }
        .card-body {
            color: #f8f9fa; /* Light text inside the card */
        }
        .card-title {
            color: #ffc107; /* Yellow color for job profile */
        }
        .card-footer {
            background-color: #343a40; /* Dark footer */
        }
        .card-text strong {
            color: #ffc107; /* Yellow color for strong labels */
        }
    </style>
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-dark">
    <div class="container">
        <a class="navbar-brand fs-1 fw-medium" href="#">Kareem Job Portal Web App</a>
        <button class="navbar-toggler" type="button"
                data-bs-toggle="collapse" data-bs-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false"
                aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item"><a class="nav-link" href="home">Home</a></li>
                <li class="nav-item"><a class="nav-link" href="viewalljobs">All Jobs</a></li>
                <li class="nav-item"><a class="nav-link" href="">Contact</a></li>
            </ul>
        </div>
    </div>
</nav>

<div class="container mt-5">
    <h2 class="mb-4 text-center font-weight-bold text-warning">Job Post List</h2>

    <div class="row row-cols-2">
        <c:forEach var="jobPost" items="${jobPosts}">

            <div class="col mb-4">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">${jobPost.postProfile}</h5>
                        <p class="card-text">
                            <strong>Description:</strong>
                            ${jobPost.postDesc}
                        </p>
                        <p class="card-text">
                            <strong>Experience Required:</strong>
                            ${jobPost.reqExperience} years
                        </p>
                        <p class="card-text">
                            <strong>Tech Stack:</strong>
                            <ul>
                                <c:forEach var="tech" items="${jobPost.postTechStack}">
                                    <li>${tech}</li>
                                </c:forEach>
                            </ul>
                        </p>
                    </div>
                    <div class="card-footer">
                        <!-- Optional footer content -->
                    </div>
                </div>
            </div>
        </c:forEach>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
        crossorigin="anonymous"></script>
</body>
</html>
