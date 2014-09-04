<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=utf8" pageEncoding="utf8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ page trimDirectiveWhitespaces="true" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta http-equiv="Content-Language" content="English"/>
    <link rel="stylesheet" media="all" href="<c:url value="/resources/css/bootstrap.css"/>">
    <link rel="stylesheet" media="all" href="<c:url value="/resources/css/my.css"/>">
    <title>Books</title>
</head>
<body>

<div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
    <div class="container">
        <a class="navbar-brand" href="#">Spring Books</a>

        <div class="collapse navbar-collapse">
            <ul class="nav navbar-nav">
                <li class="active"><a href="#">Latest books</a></li>
                <li><a href="#about">My recommendations</a></li>
                <li><a href="#contact">Contact</a></li>
            </ul>
        </div>
        <!--/.nav-collapse -->
    </div>
</div>


<div class="container">
    <div class="starter-template">
        <h1>Ништяк попсовые книги</h1>

        <p class="lead">На самом деле просто все что есть=(</p>

        <div class="row-fluid mygrid">

            <c:forEach items="${books}" var="book">
                <div class="col-md-3">
                    <h3>${book.origTitle}</h3>
                    <a class="cover"><img src="<c:url value="/resources/covers/"/>${book.id}.jpg"></a>
                    <p>
                    <c:choose>
                        <c:when test="${fn:length(book.description)>200}">
                            ${fn:substring(book.description, 0, 200)}...
                        </c:when>
                        <c:otherwise>
                            ${book.description}
                        </c:otherwise>
                    </c:choose>
                    </p>

                    <a class="btn btn-default" href="<c:url value="/book/"/>${book.id}" role="button">Подробней »</a>
                </div>
            </c:forEach>

        </div>
    </div>

</div>
<!-- /.container -->


</body>
</html>