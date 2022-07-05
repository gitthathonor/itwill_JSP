<%@page import="com.itwillbs.member.MemberBean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.itwillbs.member.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
   <h1>WebContent/member/list.jsp</h1>
   
   <%
     // 세션제어 (로그인X,관리자X)
     String id = (String)session.getAttribute("id");
   
    if(id == null || !id.equals("admin") ){
    	response.sendRedirect("loginForm.jsp");
    }
     
     // MemberDAO 객체 생성 - getMemberList();
     MemberDAO mdao = new MemberDAO();
     
     ArrayList memberList = mdao.getMemberList();
   
     // DB에서 회원정보를 가져와서 화면에 출력(table)
   %>
   
   <table border="1">
     <tr>
       <td>아이디</td>
       <td>비밀번호</td>
       <td>이름</td>
       <td>나이</td>
       <td>성별</td>
       <td>이메일</td>
       <td>회원가입일</td>
     </tr>
     
     <%for(int i=0;i<memberList.size();i++){ 
           MemberBean mb = (MemberBean) memberList.get(i);
           if(mb.getId().equals("admin")) {
        	   continue;
           }
     %>
	     <tr>
	       <td><%=mb.getId() %></td>
	       <td><%=mb.getPass() %></td>
	       <td><%=mb.getName() %></td>
	       <td><%=mb.getAge() %></td>
	       <td><%=mb.getGender() %></td>
	       <td><%=mb.getEmail() %></td>
	       <td><%=mb.getReg_date() %></td>
	     </tr>
     <%} %>
   </table>
   
   
   
   
   
   
   
</body>
</html>