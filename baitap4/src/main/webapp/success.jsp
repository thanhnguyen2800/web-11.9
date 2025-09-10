<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Saved</title>
</head>
<body>
<c:set var="pageTitle" value="Đã lưu"/>
<h1 class="h4">Đã lưu!</h1>
<p>Full name: ${user.fullName}</p>
<p>Phone: ${user.phone}</p>
<c:if test="${user.imagePath != null}">
    <img class="img-thumbnail" src="${pageContext.request.contextPath}/${user.imagePath}" style="max-width:200px;">
</c:if>
<div>
    <a class="btn btn-link" href="${pageContext.request.contextPath}/profile/update">Về form</a>
</div>
</body>
</html>


