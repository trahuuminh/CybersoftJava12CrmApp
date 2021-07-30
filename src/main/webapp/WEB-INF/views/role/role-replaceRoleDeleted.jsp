<%@page import="cybersoft.java12.crmapp.util.UrlConst"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<head>
<meta charset="UTF-8">
<title>Replace Role</title>
</head>
<body>
	<!-- Breadcrumb -->
	<div class="container page__heading-container">
	    <div class="page__heading">
	        <div class="d-flex align-items-center">
	            <div>
	                <nav aria-label="breadcrumb">
	                    <ol class="breadcrumb mb-0">
	                        <li class="breadcrumb-item"><a href="<c:url value="<%=UrlConst.HOME %>" />">Home</a></li>
	                        <li class="breadcrumb-item"><a href="<c:url value="<%=UrlConst.ROLE_REPLACE%>" />">Replace Role</a></li>
	                        <li class="breadcrumb-item active" aria-current="page">
	                            Replace Role
	                        </li>
	                    </ol>
	                </nav>
	                <h1 class="m-0">Replace Role</h1>
	            </div>
	        </div>
	    </div>
	</div>
	<!-- End Breadcrumb -->
	<div class="container page__container">
		<div class="card card-form">
            <div class="row no-gutters">
                <div class="col-lg-4 card-body">
                    <p><strong class="headings-color">Rules</strong></p>
                    <p class="text-muted">Choose another Role replace the one you delete</p>
                </div>
                <div class="col-lg-8 card-form__body card-body">
                    <form action="<c:url value="<%=UrlConst.ROLE_DELETE %>" />?oldId=${oldRole.id}" method="post">
                        <div class="form-group">
                                <label for="role">Role</label>
                                <select id="role" name="role" data-toggle="select" class="form-control">
                                	<c:forEach var="role"  items="${roles }">
                                    	<option value="${role.id }">${role.name }</option> 
                                    	                  
                                    </c:forEach>
                                </select>
                        </div>
                        <button type="submit" class="btn btn-primary">Delete</button>
                    </form>
                </div>
            </div>
        </div>
     </div>
</body>