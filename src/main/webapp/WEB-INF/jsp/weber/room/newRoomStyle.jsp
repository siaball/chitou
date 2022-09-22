<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html"; charset="UTF-8">
<title>加入飯店資料</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<style type="text/css">
	.box {
		width: 100px;
		height: 100px;
		border: 1px solid black;
		overflow: hidden;
		margin: 10px;
	}
</style>
</head>
<body>
<%@ include file="/WEB-INF/includes/Header.jsp"  %>
	<div align="center">
	    <form:form action="insertStyle" method="post" modelAttribute="style" enctype="multipart/form-data">
	        請輸入房型名稱:
	        <form:input type="text" path="name" name="name" id="name"/><br>
	        容納人數:
	        <form:input type="text" path="capacity" name="capacity" id="capacity"/><br>
	        價格:
	        <form:input type="text" path="price" name="price" id="price"/><br>
	        床位:
	        <form:input type="text" path="bed" name="bed" id="bed"/><br>
	        狀態:
	        <form:input type="text" path="status" name="status" id="status"/><br>
	        房間數量:
	        <input type="text" name="roomAmount"><br>
	    	照片:<br>
	    	<input id="upload" type="file" name="upload" accept="image/*" multiple="multiple"><br>
	    	<input type="submit" name="insert" value="加入一筆資料">
	    </form:form>
	    <div id="picPreview"></div>
    <script>
	    $('#upload').on('change',function(e){
	    	$('#picPreview').empty();
    		var photos = this.files;
	    	for(let i=0;i<photos.length;i++){
	    		var file = photos[i];
	    		var fr = new FileReader();
	    		fr.onload = function(e){
	    			$('#picPreview').append('<img id="img" src="'+e.target.result+'" class="box">');
	    		};
	    		fr.readAsDataURL(file);
	    	};
	    });
    </script>
</body>
</html>