<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=utf8" pageEncoding="utf8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page trimDirectiveWhitespaces="true" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta http-equiv="Content-Language" content="English"/>
    <link rel="stylesheet" media="all" href="<c:url value="/resources/css/bootstrap.css"/>">
    <link rel="stylesheet" media="all" href="<c:url value="/resources/css/my.css"/>">
    <title>${author.name}</title>
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


<div class="container-fluid">
    <div class="row">

        <div class="col-sm-4">
            <h3>${author.name}</h3>
            <a class="photo"><img src="<c:url value="/resources/photo/"/>${author.id}.jpg"></a>
            <table class="table">
                <tbody>
                <tr>
                    <td>Родился</td>
                    <td><fmt:formatDate type="date"
                                        pattern="dd-MM-yyyy" value="${author.born}"/></td>
                </tr>
                <tr>
                    <td>Страна</td>
                    <td><img src="<c:url value="/resources/flags/"/>${fn:toLowerCase(author.country)}.gif"
                             alt="${author.country}"/></td>
                </tr>
                </tbody>
            </table>
        </div>

        <div class="col-sm-8">

            <h4>Книги, обсуждаемые пользователями</h4>

            <div class="list-group">
                <c:forEach items="${author.books}" var="book">

                    <a href="<c:url value="/book/"/>${book.id}" class="list-group-item ">
                        <h4 class="list-group-item-heading"><img class="icon"
                                                                 src="<c:url value="/resources/covers/"/>${book.id}.jpg"/> ${book.origTitle}
                        </h4>

                        <p class="list-group-item-text">
                            <c:choose>
                                <c:when test="${fn:length(book.description)>300}">
                                    ${fn:substring(book.description, 0, 300)}...
                                </c:when>
                                <c:otherwise>
                                    ${book.description}
                                </c:otherwise>
                            </c:choose>

                        </p>
                    </a>

                </c:forEach>
            </div>
            <!-- end of list-->
        </div>
    </div>
</div>
<!-- /.container -->


</body>
</html>