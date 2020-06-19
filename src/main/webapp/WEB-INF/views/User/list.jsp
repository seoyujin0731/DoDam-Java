<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<!-- <session-timeout>30</session-timeout> -->
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<main id="js-page-content" role="main" class="page-content">




	<c:forEach var="user" items="${ UserList }">
        <tr data-url="edit?id=${ user.dd_user_id }">
          <td>${ user.dd_user_id }</td>
          <td>${ user.dd_user_email }</td>
          <td>${ user.dd_user_tel }</td>
          <td>${ user.dd_user_brith }</td>
          <td>${ user.dd_user_location }</td>
          <td>${ user.dd_user_gender }</td>
        </tr>
        <br>
    </c:forEach>

</main>

</body>
</html>