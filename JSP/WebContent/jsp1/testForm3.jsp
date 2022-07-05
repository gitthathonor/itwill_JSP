<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>WebContent/jsp/testForm3.jsp</h1>
	<!-- 사용자의 이름, 나이, 성별(라디오버튼) 남녀, 취미(체크박스) 3가지, 강의장(select/선택상자) 6개 정도  -->
	<!-- testPro3.jsp 페이지로 이동 후 정보 출력 -->
	<fieldset>
	<legend>testForm3</legend>
	<form action="testPro3.jsp" name="fr" method="post">
		이름 : <input type="text" name="name"> <br>
		나이 : <input type="text" name="age"> <br>
		성별
		<input type="radio" name="sex" value="male">남 
		<input type="radio" name="sex" value="female">여 <br>
		취미
		<input type="checkbox" name="hobby" value="game">게임
		<input type="checkbox" name="hobby" value="cooking">요리
		<input type="checkbox" name="hobby" value="hiking">등산 <br>
		
		<select name="sel" multiple="multiple">
			<option value="0">선택해주세요</option>
			<option value="1강의실">1강의실</option>
			<option value="2강의실">2강의실</option>
			<option value="3강의실">3강의실</option>
			<option value="4강의실">4강의실</option>
			<option value="5강의실">5강의실</option>
		</select>
		<br>
		
		<input type="submit" value="전송">

	</form>
</fieldset>


</body>
</html>