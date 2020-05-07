<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<nav class="navbar navbar-expand navbar-dark bg-dark static-top">

  <a class="navbar-brand mr-1" href="/admin/">퀴즈팡팡 관리자</a>

  <form class="d-none d-md-inline-block form-inline ml-auto mr-0 mr-md-3 my-2 my-md-0">
  </form>

  <ul class="navbar-nav ml-auto ml-md-0">
  	<li class="nav-item">
  	  <span class="nav-link" style="font-size: 1rem; margin-top: 4.5px; margin-right: -8px; cursor: default; color: rgba(255, 255, 255, 0.75);">
       	<c:if test="${admin.admin == 1}">관리자</c:if>
       	<c:if test="${admin.admin == 0}">손님</c:if>
      </span>
    </li>
    <li class="nav-item dropdown no-arrow">
      <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
        <i class="fas fa-user-circle fa-fw"></i>
      </a>
      <div class="dropdown-menu dropdown-menu-right" aria-labelledby="userDropdown">
        <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">로그아웃</a>
      </div>
    </li>
  </ul>

</nav>