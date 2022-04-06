<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
	import = "java.sql.*"     
%>

<% request.setCharacterEncoding("utf-8"); 
	String id =  request.getParameter("id");
	String passwd =  request.getParameter("pwd");
	
	//1.jdbc driver 등록
	Class.forName("org.mariadb.jdbc.Driver");
	
	//2.db와 연결생성
	String url="jdbc:mariadb://localhost:3333/jiyedb";
	String user = "jiye";
	String pwd = "1111";
	Connection con= DriverManager.getConnection(url, user, pwd);
	
	//3.
	//String sql = "insert into login(id, pwd) values('"+ id +"', '"+ passwd +"')";
	//Statement stmt = con.createStatement();
	String sql = "insert into login(id, pwd) values(?,?)";
	
	//4.
	PreparedStatement pstmt = con.prepareStatement(sql);
	pstmt.setString(1, id);
	pstmt.setString(2, passwd);
	pstmt.executeUpdate();
	//int i = stmt.executeUpdate(sql);
	
	//5.
	pstmt.close();
	con.close();
	
	response.sendRedirect("dblogin.jsp");

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>