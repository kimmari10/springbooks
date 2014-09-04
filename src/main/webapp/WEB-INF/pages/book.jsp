<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=utf8" pageEncoding="utf8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page trimDirectiveWhitespaces="true" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta http-equiv="Content-Language" content="English"/>
    <link rel="stylesheet" media="all" href="<c:url value="/resources/css/bootstrap.css"/>">
    <link rel="stylesheet" media="all" href="<c:url value="/resources/css/my.css"/>">
    <title>${book.origTitle}</title>
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
        </div><!--/.nav-collapse -->
    </div>
</div>



    <div class="container-fluid">
        <div class="row">
            <div class="col-sm-2">
                <h1>${book.origTitle}</h1>
                <a class="bigCover"><img src="<c:url value="/resources/covers/"/>${book.id}.jpg"></a>
                <table class="table table-striped">
                    <tbody>
                    <tr><td>Year </td><td>${book.releaseYear}</td></tr>
                    <tr><td>Author </td><td>${book.author.name}</td></tr>
                    </tbody>
                </table>
                <p>${book.description}</p>
            </div>
            <div class="col-sm-10">

                <!-- static content to test markup-->
                <table class="reviews">
                    <tr>
                        <td><img src="http://cs620625.vk.me/v620625052/18d23/_YYX1P26e0s.jpg"></td>
                        <td> <h3>Анастасия Кирилюк</h3><p>Чистой воды трешак. Ничего интересного или увлекательного я в этом не нахожу. И вообще в нашей компании не приветствуется английский.</p></td>
                    </tr>
                    <tr>
                        <td><img src="http://cs421220.vk.me/v421220808/f96b/yiaJ2Aseexs.jpg"></td>
                        <td> <h3>Сергей Рой</h3><p>Ну такое. ${book.origTitle} - я много слышал об этой книжке. Вот на курсах закончу с спрингом, и прочту </p></td>
                    </tr>
                </table>
            </div>
        </div>
    </div>
    </div><!-- /.container -->



</body>
</html>