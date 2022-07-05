<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>WebContent/jsp5/updateForm.jsp</h1>
	<!--  
		사용자의 ID, PASS 입력, 수정할 이름 입력
		updatePro.jsp페이지로 정보 전달
	-->
	<fieldset>
	<form action="updatePro.jsp" name="updateFr" method="post">
		아이디 : <input type="text" name="userID"> <br>
		비밀번호 : <input type="password" name="userPW"> <br>
		이름 : <input type="text" name="userName"> <br>
		
		<input type="submit" value="전송!">
	</form>
	</fieldset>
	



</body>
</html>