<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
	import = "java.sql.*"    
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DB연결</title>
</head>
<body>
<%
//1.jdbc driver 등록
Class.forName("org.mariadb.jdbc.Driver");

//2.db와 연결생성
String url="jdbc:mariadb://localhost:3333/jiyedb";
String user = "jiye";
String pwd = "1111";

Connection con= DriverManager.getConnection(url, user, pwd);

//3.db 연동
Statement stmt = con.createStatement();

//4.연동확인
out.println("DB연결 성공!!");

//5.DB연결 해지
stmt.close();
con.close();

%>
</body>
</html>