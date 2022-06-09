package cs.dit.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import cs.dit.dao.LoginDao;
import cs.dit.dto.LoginDto;
import cs.dit.service.*;

@WebServlet("*.do")
public class lController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		
		String uri = request.getRequestURI();
		String com = uri.substring(uri.lastIndexOf("/")+1, uri.lastIndexOf(".do"));
		String page = null;

		if(com != null && com.trim().equals("list")) {
			LoginService service = new ListService();
			service.execute(request, response);
			
			page = "/WEB-INF/view/list.jsp";

		}else if(com != null && com.trim().equals("insertForm")) {
			
			page = "/WEB-INF/view/insertForm.jsp";
			
		}else if(com != null && com.trim().equals("insert")) {
			LoginInsertService service = new LoginInsertService();
			service.execute(request, response);
			
			page = "list.do";
		}	
			RequestDispatcher rd = request.getRequestDispatcher(page);
			rd.forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
