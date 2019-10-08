<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="src.com.ssafy.model.dto.Member"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보 조회</title>
<link href="css/basic.css" rel="stylesheet" type="text/css">
</head>
<body>
<%
	String msg = (String)request.getAttribute("msg");
	Member member=(Member)request.getAttribute("member");
	
	if(msg !=null){
%>
    <%=msg%>
<a href="index.jsp"><br/>홈으로 가기</a>
    
  <%}else{ %>    
성공적으로 회원가입 되었습니다.<br/>
<a href="index.jsp">홈으로 가기</a>
<%}%>
</body>
</html>






