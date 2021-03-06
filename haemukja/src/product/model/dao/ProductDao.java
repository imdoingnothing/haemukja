package product.model.dao;

import static common.JDBCTemplate.close;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import common.Attachment;
import product.model.vo.Product;
import product.model.vo.Sale;

public class ProductDao {

	public int insertProduct(Connection conn, ArrayList<Product> plist) {
		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = "INSERT INTO PRODUCT VALUES(SEQ_P.NEXTVAL,?,?,?,DEFAULT,?,?,?)";
		
		try {
			for(int i = 0; i < plist.size(); i++) {
				pstmt = conn.prepareStatement(query);
				pstmt.setString(1, plist.get(i).getpTitle());
				pstmt.setInt(2, plist.get(i).getPrice());
				pstmt.setInt(3, plist.get(i).getpAmount());
				pstmt.setString(4, plist.get(i).getsId());
				pstmt.setInt(5, plist.get(i).getpDiscount());
				
				String pCode = "";
				switch(plist.get(i).getpCode()) {
					case "veg": pCode = "VEG"; break;
					case "fnr": pCode = "FNR"; break;
					case "sea": pCode = "SEA"; break;
					case "me": pCode = "ME"; break;
					case "vm": pCode = "VM"; break;
					case "bc": pCode = "BC"; break;
					case "nso": pCode = "NSO"; break;
				}
				pstmt.setString(6, pCode);
				
				result += pstmt.executeUpdate();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}

	public Product selectProduct(Connection conn, int pId) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		Product p = null;
		
		String query = "SELECT * FROM PRODUCT WHERE PID=?";
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, pId);
			
			rset = pstmt.executeQuery();
			while(rset.next()) {
				p = new Product(rset.getInt("PID"),
						rset.getString("PTITLE"),
						rset.getInt("PPRICE"),
						rset.getInt("PAMOUNT"),
						rset.getString("SOLDOUT"),
						rset.getString("SID"),
						rset.getInt("PDISCOUNT"),
						rset.getString("PCODE"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rset);
		}
		
		return p;
	}

	public int insertSale(Connection conn, Sale s) {
		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = "INSERT INTO SELL VALUES(SEQ_SB.NEXTVAL, ?, SYSDATE, ?, ?, ?, ?)";
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, s.getSbTitle());
			pstmt.setString(2, s.getSbContent());
			pstmt.setString(3, s.getSbKind());
			pstmt.setString(4, s.getsId());
			pstmt.setInt(5, s.getpId());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}

	public int insertAttachment(Connection conn, ArrayList<Attachment> fileList) {
		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = "INSERT INTO ATTACHMENT VALUES(SEQ_A.NEXTVAL,NULL,SEQ_SB.CURRVAL,?,?,SYSDATE,?,'N', ?)";
		
		try {
			for(int i = 0; i < fileList.size(); i++) {
				Attachment at = fileList.get(i);
				pstmt = conn.prepareStatement(query);
				pstmt.setString(1, at.getFileName());
				pstmt.setString(2, at.getFilePath());
				pstmt.setInt(3, at.getLevel());
				pstmt.setString(4, at.getTag());
				
				result += pstmt.executeUpdate();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}

	public Sale selectSale(Connection conn, int sbNo) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		Sale s = null;
		
		String query = "SELECT * FROM SELL WHERE SBNO=?";
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, sbNo);
			
			rset = pstmt.executeQuery();
			while(rset.next()) {
				s = new Sale(rset.getInt("SBNO"),
						rset.getString("SBTITLE"),
						rset.getDate("SBDATE"),
						rset.getString("SBCONTENT"),
						rset.getString("SBKIND"),
						rset.getString("SID"),
						rset.getInt("PID"));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rset);
		}
		
		return s;
	}

}
