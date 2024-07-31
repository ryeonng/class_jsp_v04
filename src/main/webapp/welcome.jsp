<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>환영합니다.</title>
</head>
<body>
	<%
		// http://localhost:8080/jsp/welcom.jsp
	
		// session 객체를 사용하여 사용자의 정보 존재 여부를 확인하자.
		String username = (String)session.getAttribute("username"); // 다운캐스팅
		
		// 방어적 코드 (세션 메모리에 username 존재 x)
		if(username == null || username.trim().isEmpty()) {
			// username이라는 변수 공간에 값이 없다면, request 객체에서 사용자 정보를 추출 하자.
			username = request.getParameter("username");
			// 세션에 정상적으로 보냈다면
			if(username != null && !username.trim().isEmpty()) {
				// 세션 객체를 사용해서 사용자의 정보를 저장(속성, 값)
				session.setAttribute("username", username); // 사용자가 보낸 값 저장
			} else {
				// 사용자가 정상적인 데이터를 보내지 않았다면,
				response.sendRedirect("login.jsp"); // 다른 URL로 리다이렉트
				return;
			}
		}
		
		// application 내장 객체를 사용하여 방문 횟수 증가 카운트
		Integer visitCount = (Integer)application.getAttribute("visitCount");
		if(visitCount == null) {
			visitCount = 1;
		} else {
			visitCount++;
		}
		
		application.setAttribute("visitCount", visitCount);
		
		Date now = new Date();
	%>
	
	<h2>환영합니다, <%= username %></h2>
	<p>현재 시간 : <%= now %></p>
	<p>방문 횟수 : <%= visitCount %></p>
</body>
</html>