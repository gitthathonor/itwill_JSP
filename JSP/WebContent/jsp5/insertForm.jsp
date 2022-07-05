<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>WebContent/jsp5/insertForm.jsp</h1>
	
	<!-- 아이디, 비밀번호, 이름을 입력받아서
		insertPro.jsp 페이지로 정보 전달(post)
	  -->
	<fieldset>
	<legend>로그인 정보</legend>
	<form action="insertPro.jsp" method="post">
		아이디 : <input type="text" name="id"> <br>
		비밀번호 : <input type="password" name="pass"> <br>
		이름 : <input type="text" name="name"> <br>
		
		<input type="submit" value="전송!">
	</form>
	</fieldset>
	
	
	
	
	
	
		
</body>
</html>