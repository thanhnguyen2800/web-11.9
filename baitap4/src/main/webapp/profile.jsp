<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Update Profile</title>
</head>
<body>
<c:set var="pageTitle" value="Cập nhật hồ sơ"/>
<h1 class="h4 mb-3">Cập nhật hồ sơ</h1>
<form method="post" action="${pageContext.request.contextPath}/profile/update" enctype="multipart/form-data">
    <input type="hidden" name="id" value="${user != null ? user.id : ''}">
    <div class="mb-3">
        <label class="form-label">Họ tên</label>
        <input class="form-control" type="text" name="fullname" value="${user != null ? user.fullName : ''}" required>
    </div>
    <div class="mb-3">
        <label class="form-label">Điện thoại</label>
        <input class="form-control" type="text" name="phone" value="${user != null ? user.phone : ''}" required>
    </div>
    <div class="mb-3">
        <label class="form-label">Ảnh</label>
        <input class="form-control" type="file" name="image" accept="image/*">
    </div>
    <div>
        <button class="btn btn-primary" type="submit">Lưu</button>
    </div>
    <c:if test="${user != null && user.imagePath != null}">
        <div class="mt-3">
            <img class="img-thumbnail" src="${pageContext.request.contextPath}/${user.imagePath}" alt="avatar" style="max-width:200px;">
        </div>
    </c:if>
    <div>
        <a href="${pageContext.request.contextPath}/">Home</a>
    </div>
</form>
</body>
</html>


