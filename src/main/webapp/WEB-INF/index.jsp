<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- c:out ; c:forEach etc. -->
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- Formatting (dates) -->
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!-- form:form -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- for rendering errors on PUT routes -->
<%@ page isErrorPage="true" %>
<!-- for Bootstrap CSS -->
<%--<link rel="stylesheet" href="../resources/static/boostrap.min.css" />--%>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="/css/main.css"> <!-- change to match your file/naming structure -->
    <script src="/webjars/jquery/jquery.min.js"></script>
    <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
    <link href="<c:url value="../static/personal.css" />" rel="stylesheet" type="text/css">
    <title>Document</title>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark mr-auto">
    <div class="container">
        <span class="navbar-brand mb-0 h1">My Project</span>
        <div>
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link" href="#">Nav</a>
                </li>
                <li>
                    <a class="nav-link" href="#">Nav</a>
                </li>
            </ul>
        </div>
    </div>
</nav>
<div class="container">
    <div class="row">
        <div class="col">
            <div class="card mt-5 text-white bg-dark mb-3 p-3">
                <div class="card-body">
                    <h5 class="card-title text-center">Register</h5>
                    <form:form action="/register" method="post" modelAttribute="reg">
                        <div>
                            <div class="form-group mt-4">
                            <form:label path="userName">Username</form:label>
                            <form:input placeholder="Create a username" class="form-control" path="userName"/>
                            <form:errors path="userName" class="text-danger"/>
                            </div>
                            <div class="form-group mt-4">
                            <form:label path="email">Email</form:label>
                            <form:input placeholder="Enter email" class="form-control" path="email"/>
                            <form:errors path="email" class="text-danger"/>
                                <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                            </div>
                            <div class="form-group mt-4">
                            <form:label path="password">Password</form:label>
                            <form:input placeholder="Password" class="form-control" path="password"/>
                            <form:errors path="password" class="text-danger"/>
                            </div>
                            <div class="form-group mt-4">
                            <form:label path="confirm">Confirm Password</form:label>
                            <form:input placeholder="Confirm Password" class="form-control" path="confirm"/>
                            <form:errors path="confirm" class="text-danger"/>
                            </div>
                        </div>
                        <input class="btn btn-light mt-4 align-self-end" type="submit" value="Register">
                    </form:form>
                </div>
            </div>
        </div>
        <div class="col">
            <div class="card mt-5 text-white bg-dark mb-3 p-3">
                <div class="card-body">
                    <h5 class="card-title text-center">Login</h5>
                    <div class="form-group">
                        <form:form action="/login" method="post" modelAttribute="login">
                            <div class="form-group mt-4">
                                <form:label path="email">Email</form:label>
                                <form:input placeholder="Enter email" class="form-control" path="email"/>
                                <form:errors path="email" class="text-danger"/>
                            </div>
                            <div class="form-group mt-4">
                                <form:label class="align-self-start" path="password">Password</form:label>
                                <form:input placeholder="Password" class="form-control" path="password"/>
                                <form:errors path="password" class="text-danger"/>
                            </div>
                        <input class="btn btn-light mt-4 align-self-end" type="submit" value="Login">
                        </form:form>
                    </div>
                </div>
            </div>
        </div>

    </div>
</div>
</body>
</html>