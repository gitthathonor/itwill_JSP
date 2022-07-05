<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>WebContent/jsp1/testForm1.jsp</h1>
	
	<h2>폼태그 사용해서 정보 전달</h2>
		<form action="testPro1.jsp" name="fr" method="get">
		
			내가 좋아하는 숫자 : <input type="text" name="num"><br> <!-- 파라메터 반드시 이름이 필요 -->
			
			<input type="submit" value="정보전달">
		
		</form>
	
</body>
</html>