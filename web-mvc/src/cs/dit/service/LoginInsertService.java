package cs.dit.service;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cs.dit.dao.LoginDao;
import cs.dit.dto.LoginDto;

public class LoginInsertService implements LoginService {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		// 1. 입력폼에서 id, name, pwd를 가져온다.
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String pwd = request.getParameter("pw");
		
		// 2. id, name, pwd를  LoginDto로 만든다.
		LoginDto dto = new LoginDto(id, name, pwd);

		// 3. dao 객체를 생성한다.
		LoginDao dao = new LoginDao();
		
		// 4. insert(LoginDto)를 실행한다.
		dao.insert(dto);

	}

}
