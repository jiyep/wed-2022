package cs.dit.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import cs.dit.dto.LoginDto;

/**
 * =================================================== 패키지명 : cs.dit 파일명 :
 * LoginDao.java 변경이력 : 2022-5-2 / 최초작성 / 박지예
 * 
 * 프로그램 설명 : DB연동 기능 구현 list() : login 테이블의 내용을 화면에 출력할 수 있게 준비 insert() : 폼으로
 * 입력된 데이터를 db에 저장 checkUser() : 유효한 사용자면 1, 유효하지 않은 사용자면 0
 * =====================================================
 */

public class LoginDao {

	private java.sql.Connection getConnection() throws Exception {
		// DBCP를 사용한 DB연동
		Context initCtx = new InitialContext();
		Context envCtx = (Context) initCtx.lookup("java:comp/env");
		DataSource ds = (DataSource) envCtx.lookup("jdbc/jpark");
		java.sql.Connection con = (java.sql.Connection) ds.getConnection();
		return con;
	}

	// DB연동을 하여 login 테이블에서 레코드를 추출
	public ArrayList<LoginDto> list() {
		String sql = "select id, name, pwd from login";
		ArrayList<LoginDto> dtos = new ArrayList<LoginDto>();

		try (java.sql.Connection con = getConnection();
				Statement stmt = con.createStatement();
				ResultSet rs = stmt.executeQuery(sql);

		) {
			while (rs.next()) {
				LoginDto dto = new LoginDto();
				dto.setId(rs.getString("id"));
				dto.setName(rs.getString("name"));
				dto.setPwd(rs.getString("pwd"));

				dtos.add(dto);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return dtos;
	}

	// 메소드 작성 시 고려해야 할 것
	// 1.public / private 결정
	// 2.반환값(output)
	// 3.매게변수(input)
	// 3 개의 데이터를 받아서 db에 저장
	public void insert(LoginDto dto) {
		String sql = "insert into login(id, name, pwd) values(?, ?, ?)";

		try (java.sql.Connection con = getConnection(); PreparedStatement pstmt = con.prepareStatement(sql);) {
			pstmt.setString(1, dto.getId());
			pstmt.setString(2, dto.getName());
			pstmt.setString(3, dto.getPwd());

			pstmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	// 메소드 작성 시 고려해야 할 것
	// 1.public / private 결정
	// 2.반환값(output)
	// 3.매게변수(input)
	// 3 개의 데이터를 받아서 db에 저장
	public int checkUser(String id, String pwd) throws Exception {
		int check = 0;
		String sql = "select pwd from where id=? and pwd=?";

		try (java.sql.Connection con = getConnection(); PreparedStatement pstmt = con.prepareStatement(sql);) {
			pstmt.setString(1, id);
			pstmt.setString(2, pwd);
			try (ResultSet rs = pstmt.executeQuery();) {
				if (rs.next())
					check = 1;
				else
					check = 0;

			} catch (Exception e) {
				e.printStackTrace();

			}

			return check;
		}
	}

}
