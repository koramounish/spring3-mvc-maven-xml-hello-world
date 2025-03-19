<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Maven + Spring MVC</title>

    <!-- Spring URLs for CSS -->
    <spring:url value="/resources/core/css/hello.css" var="coreCss" />
    <spring:url value="/resources/core/css/bootstrap.min.css" var="bootstrapCss" />

    <!-- Linking CSS -->
    <link href="${bootstrapCss}" rel="stylesheet">
    <link href="${coreCss}" rel="stylesheet">
</head>
<body>
    <!-- Navbar -->
    <nav class="navbar navbar-inverse navbar-fixed-top">
        <div class="container">
            <div class="navbar-header">
                <a class="navbar-brand" href="#">Spring MVC Project</a>
            </div>
        </div>
    </nav>

    <!-- Main Content -->
    <div class="jumbotron">
        <div class="container">
            <h1>${title != null ? title : "Welcome to Spring MVC"}</h1>
            <p>
                <c:if test="${not empty name}">
                    Hello, ${name}
                </c:if>
                <c:if test="${empty name}">
                    Welcome!
                </c:if>
            </p>
            <p>
                <a class="btn btn-primary btn-lg" href="#" role="button">Learn more</a>
            </p>
        </div>
    </div>

    <!-- Sections -->
    <div class="container">
        <div class="row">
            <div class="col-md-4">
                <h2>Heading 1</h2>
                <p>Sample content for Section 1.</p>
                <p>
                    <a class="btn btn-default" href="#" role="button">View details</a>
                </p>
            </div>
            <div class="col-md-4">
                <h2>Heading 2</h2>
                <p>Sample content for Section 2.</p>
                <p>
                    <a class="btn btn-default" href="#" role="button">View details</a>
                </p>
            </div>
            <div class="col-md-4">
                <h2>Heading 3</h2>
                <p>Sample content for Section 3.</p>
                <p>
                    <a class="btn btn-default" href="#" role="button">View details</a>
                </p>
            </div>
        </div>
    </div>

    <!-- Footer -->
    <footer class="container">
        <hr>
        <p>&copy; YourWebsite 2025</p>
    </footer>

    <!-- Spring URLs for JS -->
    <spring:url value="/resources/core/js/hello.js" var="coreJs" />
    <spring:url value="/resources/core/js/bootstrap.min.js" var="bootstrapJs" />

    <!-- Linking JS -->
    <script src="${coreJs}"></script>
    <script src="${bootstrapJs}"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
</body>
</html>
