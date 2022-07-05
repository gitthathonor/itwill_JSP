<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>WebContent/jsp3/sessionLoginPro.jsp</h1>

	<h2>로그인 체크 페이지 (pro)</h2>
	
	<%
		String userID = "admin";
		String userPW = "1234";
	
		//전달된 파라메터값 저장
		String inputID  = request.getParameter("id");
		String inputPW = request.getParameter("pw");
		
		System.out.println(inputID);
		System.out.println(inputPW);
		
		//문자열 메세지 비교시 equals() 사용
		//userID.equals(inputID);
		

		//파라메터값이랑 기존의 시스템 정보랑 같은지 다른지 체크
		//if(userID.equals(inputID) && userPW.equals(inputPW)) {
		//	System.out.println("로그인 성공!");
		//} else {
		//	System.out.println("로그인 실패!");
		//}
		
		
		//권장하는 로직
		if(userID.equals(inputID)) {
			//아이디가 있는 경우
			if(userPW.equals(inputPW)) {
				//아이디가 있으면서, 비밀번호 맞음 => 본인	
				System.out.println("로그인 성공! 메인페이지로 이동");
				//아이디 정보를 세션 객체에 저장
				session.setAttribute("loginID", inputID);
				
				response.sendRedirect("sessionMain.jsp");
			} else {
				//아이디가 있으면서, 비밀번호 틀림
				System.out.println("비밀번호 오류!");
				System.out.println("사용자의 아이디 혹은 비밀번호 오류!!");
				response.sendRedirect("sessionLoginForm.jsp");
			}
			
		} else {
			//아이디가 없는 경우
			System.out.println("아이디 없음!!");
			response.sendRedirect("sessionLoginForm.jsp");
		}
	%> 
	
	
	
	
			
</body>
</html>