<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>WebContent/jsp1/testPro1.jsp</h1>

	<h2> testForm1페이지에서 전달한 정보를 저장 </h2>
	
	<%  //스크립틀릿
		//JSP 내장객체 - request를 사용
		//request.getParameter("파라메타명");
		//*폼태그로 정보를 전달하면 데이터 타입은 String으로 변환
	
		String num = request.getParameter("num");
		//int num = Integer.parseInt(request.getParameter("num")); //내가 한것
		
		System.out.println(request.getParameter("num")); // 콘솔창에 찍힌다.
		out.println(request.getParameter("num")); // 페이지에 찍힌다.
	%>
	html 영역<br>
	
	전달된 변수 값 : <%=num%><br>
	전달된 변수 값  + 100 : <%=num+100%><br> <!-- 뒤에 100을 더했는데 더해지지 않은건 num이 String타입이기 때문  -->
	<%=Integer.parseInt(num) + 100 %>
	
		Integer.parseInt(문자열 숫자) => 숫자로 변경
	
	


</body>
</html>