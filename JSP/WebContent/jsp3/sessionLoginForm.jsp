<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>WebContent/jsp3/sessionLoginForm.jsp</h1>
	

	<fieldset>
	<legend>아이티윌 로그인 페이지</legend>
	<form action="sessionLoginPro.jsp" name="fr" method="post">
		아이디 : <input type="text" name="id"> <br>
		비밀번호 : <input type="password" name="pw"> <br>
		
		<input type="submit" value="로그인">
	</form>
	</fieldset>
	
	
	<fieldset>
		1. loginForm페이지에서 사용자 정보(ID/PW)	입력 <br>
		2. sessionLoginPro.jsp 페이지로 이동 <br>
		3. 로그인 여부 체크(아이디, 비밀번호 동일여부 체크)<br>
		4. 결과에 따른 페이지 이동 <br>
		4-1. 문제가 있는 경우, 다시 로그인 페이지 이동 <br>
		4-2. 문제없는 경우 sessionMain.jsp페이지 이동 <br>
		5. main 페이지에서 로그인 상태 확인(로그인 없이 접근하는 경우 로그인페이지로 이동)
		6. 로그아웃(sessionLogout.jsp) <br>
	</fieldset>


</body>
</html>