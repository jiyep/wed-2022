<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import = "java.sql.*"
    %>
    
<%
	//1. jdbc driver를 로드한다.
	Class.forName("org.mariadb.jdbc.Driver");
	
	//2. db와의 연결(connection)을 생성한다.
	String url = "jdbc:mariadb://localhost:3333/jiyedb";
	String user = "jiye";
	String pwd = "1111";
	Connection con = DriverManager.getConnection(url, user, pwd);
	
	//3. 연결 후 그 통로를 통해 sql문을 실행한다.
	String sql = "select * from login";
	Statement stmt = con.createStatement();
	
	//4. SQL 실행
	ResultSet rs = stmt.executeQuery(sql);
%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>DB 연동</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>	
</head>
<body>

	<table class="table">
		<tr>
			<th>id</th>
			<th>name</th>
			<th>pwd</th>
		</tr>
		<tr>
<%	
	//5. 반환된 데이터 출력
	while(rs.next()){
		String id = rs.getString("id");
		String name = rs.getString("name");
		String pwd2 = rs.getString("pwd");
%>
			<td><a href='updateForm.jsp?id=<%=id%>'><%=id %></a></td>
			<td><%=name %></td>
			<td><%=pwd2 %></td>
		</tr>			
	<%	}%>
	</table>
	
<%
	//6. 객체 해제
	rs.close();
	stmt.close();
	con.close();
	
	%>
</body>
</html>