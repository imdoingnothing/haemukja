package member.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import member.model.service.MemberService;
import member.model.vo.Member;


@WebServlet("/login.me")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		String pw = request.getParameter("password");
		Member member = new Member(id, pw);
		Member loginMember = new MemberService().loginMember(member);
		System.out.println("Servlet에서 화면에 뿌려주기 전 : " + loginMember);
		
		RequestDispatcher view = null;
		if(loginMember != null) {
			HttpSession session = request.getSession();
			
			session.setAttribute("loginMember",loginMember);
//			view = request.getRequestDispatcher("index.jsp");
			response.sendRedirect("recipe/recipeBoardWrite.jsp");
		} else {
			//실패, 일부러 404 error 뜨게 설정
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
