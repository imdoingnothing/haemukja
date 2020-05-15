package member.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import member.model.vo.Member;
import static common.JDBCTemplate.*;

public class MemberDao {

	public Member loginMember(Connection conn, Member member) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		Member loginMember = null;
		String sql = "SELECT * FROM MEMBER WHERE MID = ? AND MPW = ?";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, member.getMid());
			pstmt.setString(2, member.getMpw());
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				loginMember = new Member(rs.getString("MID"),
						rs.getString("MPW"),
						rs.getString("MNAME"),
						rs.getString("MTEL"),
						rs.getString("MADDR"),
						rs.getString("MEMAIL"),
						rs.getString("MNO"),
						rs.getInt("MPOINT"),
						rs.getString("MNICKNAME"),
						rs.getDate("INFOUPDATE"),
						rs.getString("MOUT"),
						rs.getDate("DATE"),
						rs.getInt("MSCORE"));
			}
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			close(rs);
			close(pstmt);
		}
		return loginMember;
	}

}
