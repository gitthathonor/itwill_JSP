<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>WebContent/javabean/BeanForm2.jsp</h1>
	<!-- 사용자의 아이디, 비밀번호, 좋아하는 숫자 1개를 입력 
	1) BeanPro2.jsp 페이지에 정보를 전달 -> 출력(기존방식)
	 * JavaBean2 객체 생성
	2) 자바코드를 사용해서 자바빈 객체 생성후 저장, 출력
	3) 액션태그 사용해서
	-->
	<form action="BeanPro2.jsp" name="bf2", method="post">
		아이디 : <input type="text" name="id"> <br>
		비밀번호 :<input type="password" name="pass"> <br>
		좋아하는 숫자 : <input type="text" name="num"> <br>
		
		<input type="submit" value="전송"	>
	</form>
	
	
</body>
</html>