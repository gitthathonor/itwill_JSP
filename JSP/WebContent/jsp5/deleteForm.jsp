<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>WebContent/jsp5/deleteForm.jsp</h1>
	<!--  
		ID/PASS 입력받아서 deletePro.jsp전달
	-->
	<field>
		<form action="deletePro.jsp" name="del" method="post">
			아이디 : <input type="text" name="id"> <br>
			비밀번호 : <input type="password" name="pass"> <br>
			이름 : <input type="text" name="name"> <br>
			
			<input type="submit" value="정보 삭제!"> 
		</form>
	</field>
	
	
	

</body>
</html>