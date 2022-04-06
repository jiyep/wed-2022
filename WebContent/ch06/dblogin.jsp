<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
	import = "java.sql.*"    
%>
<%
//1.jdbc driver 등록
Class.forName("org.mariadb.jdbc.Driver");

//2.db와 연결생성
String url="jdbc:mariadb://localhost:3333/jiyedb";
String user = "jiye";
String pwd = "1111";

Connection con= DriverManager.getConnection(url, user, pwd);

//3.db 연동
String sql = "select * from login";
Statement stmt = con.createStatement();

//4.sql 실행결과 확인
ResultSet rs= stmt.executeQuery(sql);
//out.println("DB연결 성공!!");

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DB연결</title>
</head>
<body>

	<table>
		<tr>
			<th>id</th>
			<th>pwd</th>
		</tr>
		<tr>
			<% 
			//5.결과 셋 확인
			while(rs.next()){
				String id =  rs.getString("id");
				String password =  rs.getString("pwd");
			%>
			<td> <%=id %> </td>
			<td> <%=password %> </td>
		</tr>
		<% } %>
	</table>
	
	<% 
	//6.DB연결 해지
	rs.close();
	stmt.close();
	con.close();
	%>

</body>
</html>