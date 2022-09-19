<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html"; charset="UTF-8">
<title>加入飯店資料</title>
</head>
<body>
	<div align="center">
	    <form:form action="insertHotel" method="post" modelAttribute="hotel" enctype="multipart/form-data">
	        飯店名稱:
	        <form:input type="text" path="name" name="name" id="name"/><br>
	        地址:
	        <form:input type="text" path="address" name="address" id="address"/><br>
	        類型:
	        <form:input type="text" path="type" name="type" id="type"/><br>
	        介紹:
	        <form:input type="text" path="intro" name="intro" id="intro"/><br>
	        國家:
	        <form:input type="text" path="country" name="country" id="country"/><br>
	        電話:
	        <form:input type="text" path="phone" name="phone" id="phone"/><br>
	        狀態:
	        <form:input type="text" path="status" name="status" id="status"/><br>
	        可容納人數:
	        <form:input type="text" path="capacity" name="capacity" id="capacity"/><br>
	        業主名稱:
	        <form:input type="text" path="owner" name="owner" id="owner"/><br>
	        平均房價:
	        <form:input type="text" path="averagePrice" name="averagePrice" id="averagePrice"/><br>
	        照片:
	        <input type="file" name="photo1" id="photo1"/><br>
<!-- 	        <input type="file" name="photo1" accept="image/*"> -->
	        <input type="submit" name="insert" value="加入一筆資料">
	    </form:form>
    </div>
    <script>
    
    </script>
</body>
</html>