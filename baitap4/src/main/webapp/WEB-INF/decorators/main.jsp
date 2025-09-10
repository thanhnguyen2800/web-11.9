<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="sitemesh" uri="/WEB-INF/tld/sitemesh-decorator.tld" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>${pageTitle != null ? pageTitle : 'Ứng dụng'}</title>
    <link rel="stylesheet" href="<c:url value='/webjars/bootstrap/5.3.3/css/bootstrap.min.css'/>">
    <style>
        body { padding-top: 4.5rem; }
    </style>
    <sitemesh:write property="head"/>
    <link rel="icon" href="data:,">
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
  <div class="container">
    <a class="navbar-brand" href="<c:url value='/'/>">Bài tập tuần 4</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav ms-auto">
        <li class="nav-item"><a class="nav-link" href="<c:url value='/'/>">Trang chủ</a></li>
        <li class="nav-item"><a class="nav-link" href="<c:url value='/profile/update'/>">Cập nhật hồ sơ</a></li>
      </ul>
    </div>
  </div>
 </nav>

<main class="container">
  <div class="card shadow-sm">
    <div class="card-body">
      <sitemesh:write property="body"/>
    </div>
  </div>
</main>

<script src="<c:url value='/webjars/bootstrap/5.3.3/js/bootstrap.bundle.min.js'/>" defer></script>
</body>
</html>


