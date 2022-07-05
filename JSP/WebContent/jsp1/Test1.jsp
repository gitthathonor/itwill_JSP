<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>WebContent/jsp1/Test1.jsp</h1>
	<script type="text/javascript">
	//자바스크립트 주석
	/*  
		자바스크립트 주석2
	*/
	</script>
	

	<h2>JSP = JAVA + HTML</h2>
	<!-- HTML 주석문 사용 -->
	<%-- JSP주석 --%>
	
	<%
		//자바코드를 사용가능
		/*  
			자바 주석코드 사용가능
		*/
		/**
			주석문 사용가능
		**/
	%>
	
	<%
		// [java]
		// 문자열 배열 1개를 생성해서
		// ["java", "jsp", "html", "web"] 데이터 초기화 후 콘솔창에 출력
		
		String[] arr = {"java", "jsp", "html", "web"};
	
		for(int i=0; i<arr.length; i++) {
			System.out.println("arr["+i+"] : "+arr[i]);
		}
		
		for(int i=0; i<arr.length; i++) {
			//HTML페이지에 출력
			out.println("arr["+i+"] : "+arr[i]+"<br>");
		}
	%>
	
	
	<h2>HTML 코드</h2>
	
	
	
	<%
		//<h2>JSP 코드 </h2> 태그x
		for(int i=0; i<arr.length; i++) {
	%>
	
	HTML 코드  : <%=arr[i] %><br>
		
	<% 
		}
	%>
	
	<hr>
	<table border="1">
		<tr>
			<td>과목명</td>
			<td>과목명</td>
		</tr>
		<%for(int i=0; i<arr.length; i++) { %>
		<tr>
			<td>과목명</td>
			<td><%=arr[i] %></td>
		</tr>
		<% } %>
	</table>
	
	
	
</body>
</html>