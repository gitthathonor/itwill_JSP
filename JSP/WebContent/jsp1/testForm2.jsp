<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>WebContent/jsp1/testForm2.jsp</h1>
	<!-- 사용자의 이름, 나이를 입력받아서 
		testPro2.jsp 페이지에 전달 / 
		화면에 출력 "입력정보  : ㅇㅇㅇ (00세)- 성인입니다/미성년자 입니다."
	-->
	<form action="testPro2.jsp" name="fr" method="post">
		이름 : <input type="text" name="name"> <br>
		나이 : <input type="text" name="age"> <br>
		
		<input type="submit" value="전송">
	</form>



</body>
</html>