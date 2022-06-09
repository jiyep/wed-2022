package cs.dit.service;

import java.io.*;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cs.dit.dao.LoginDao;
import cs.dit.dto.LoginDto;

public class ListService implements LoginService {

	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// 1. DB 생성
		LoginDao dao = new LoginDao();
		
		// 2. DB 메소드 실행과 결과값 저장
		ArrayList<LoginDto> dtos = dao.list();
		
		// 3. Requestscope 에 리턴값 저장
		request.setAttribute("dtos", dtos);
	}

}
