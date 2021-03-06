package member.model.service;

import java.sql.Connection;

import member.model.dao.MemberDao;
import member.model.vo.Member;
import member.model.vo.Seller;

import static common.JDBCTemplate.*;

public class MemberService {

	public Member loginMember(Member member) {
		Connection conn = getConnection();
		Member loginMember = new MemberDao().loginMember(conn, member);
		close(conn);
		return loginMember;
	}

	public Seller loginSeller(Seller seller) {
		Connection conn = getConnection();
		Seller loginSeller = new MemberDao().loginSeller(conn, seller);
		close(conn);
		return loginSeller;
	}
	
}
