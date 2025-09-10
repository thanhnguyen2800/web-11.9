<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
<c:set var="pageTitle" value="Trang chủ"/>
<h1 class="h3 mb-3">Trang chủ</h1>
<ul>
    <li><a class="link-primary" href="${pageContext.request.contextPath}/hello-servlet">Hello Servlet</a></li>
    <li><a class="link-primary" href="${pageContext.request.contextPath}/profile/update">Cập nhật hồ sơ</a></li>
    <li><a class="link-secondary" href="${pageContext.request.contextPath}/profile.jsp">Form trực tiếp</a></li>
    <li><a class="link-secondary" href="${pageContext.request.contextPath}/success.jsp">Trang success</a></li>
    <li>Uploads: ${pageContext.request.contextPath}/uploads/</li>
    <li>DB: jdbc:postgresql://localhost:5432/baitaptuan4</li>
  </ul>
</body>
</html>