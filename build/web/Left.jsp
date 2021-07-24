<%-- 
    Document   : Left
    Created on : Jul 13, 2021, 1:01:56 AM
    Author     : Quang Vinh
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<div class="col-sm-3">
    <div class="card bg-light mb-3">
        <div class="card-header bg-primary text-white text-uppercase"><i class="fa fa-list"></i> Categories</div>
        <ul class="list-group category_block">
            <c:forEach items = "${listC}" var="o">
                <li class="list-group-item text-white ${tag == o.cateID?"active":""}"><a href="category?cid=${o.cateID}">${o.cname}</a></li>
            </c:forEach>

        </ul>
    </div>
    <div class="card bg-light mb-3">
        <div class="card-header bg-success text-white text-uppercase">Lauch</div>
        <div class="card-body">
            <img class="img-fluid" src="${newest.image}" />
            <h5 class="card-title">${newest.name}</h5>
            <p class="card-text">${newest.title}</p>
            <p class="bloc_left_price">${newest.price} $</p>
        </div>
    </div>
</div>
