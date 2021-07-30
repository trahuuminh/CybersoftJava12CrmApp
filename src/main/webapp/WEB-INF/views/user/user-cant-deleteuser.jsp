<%@page import="cybersoft.java12.crmapp.util.UrlConst"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<head>
<meta charset="UTF-8">
<title>User Dashboard</title>
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
	                        <li class="breadcrumb-item"><a href="#">User</a></li>
	                        <li class="breadcrumb-item active" aria-current="page">
	                            User Dashboard
	                        </li>
	                    </ol>
	                </nav>
	                <h1 class="m-0">User Dashboard</h1>
	            </div>
	            <div class="ml-auto">
	                <a href="<c:url value="<%=UrlConst.USER_ADD %>" />" class="btn btn-light"><i class="material-icons icon-16pt text-muted mr-1">add</i>
	    Add New User</a>
	            </div>
	        </div>
	    </div>
	</div>
	<!-- End Breadcrumb -->
	
	<!-- START BODY -->
	<div class="container">
		<div class="card card-form">
		    <div class="row no-gutters">
                <table class="table mb-0 thead-border-top-0">
                    <thead>
                        <tr>
							<th>Name</th>
	                        <th>Email</th>
	                        <th>Role</th>
	                        <th>Phone</th>
	                        <th>#</th>
                        </tr>
                    </thead>
                    <tbody class="list" id="staff02">
                    	<tr class="row">
	               					<td class="col-12"><h5>Can't delete this user because he might be involved in a project</h5></td>
	               		</tr>  
                    	
                   	</tbody>
                </table>
		    </div>
		</div>
	</div>
	<!-- END BODY -->
</body>