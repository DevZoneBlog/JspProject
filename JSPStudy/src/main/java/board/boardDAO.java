package board;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class boardDAO {
	String dbUrl="jdbc:mysql://localhost:3306/odbo";
	String dbUser = "manager";
	String dbPass="1234";
	
	public void deleteContent(int num) {
		Connection con = null;
		PreparedStatement pstmt = null;
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection(dbUrl,dbUser,dbPass);
			String sql ="DELETE FROM board WHERE num=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, num);
			pstmt.executeUpdate();
		}catch(Exception e) {
			e.getStackTrace();
		}finally {
			try {
				con.close(); con = null;
				pstmt.close(); pstmt = null;
			}catch(Exception e) {
				e.getStackTrace();
			}
		}
	}
	
	public void updateContent(boardBeans bbt) {
		boardBeans bb = bbt;
		Connection con = null;
		PreparedStatement pstmt = null;
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection(dbUrl,dbUser,dbPass);
			String sql ="UPDATE board SET title=?, content=?, name=? WHERE num=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, bb.getTitle());
			pstmt.setString(2, bb.getContent());
			pstmt.setString(3, bb.getName());
			pstmt.setInt(4, bb.getNum());
			pstmt.executeUpdate();
		}catch(Exception e) {
			e.getStackTrace();
		}finally {
			try {
				con.close(); con = null;
				pstmt.close(); pstmt = null;
			}catch(Exception e) {
				e.getStackTrace();
			}
		}
	}
	
	
	
	public boardBeans readContent(int num) {
		boardBeans bb = new boardBeans();
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection(dbUrl,dbUser,dbPass);
			String sql ="SELECT * FROM board WHERE num=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, num);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				bb.setTitle(rs.getString("title"));
				bb.setName(rs.getString("name"));
				bb.setContent(rs.getString("content"));
				bb.setPass(rs.getString("pass"));
			}
			
		}catch(Exception e) {
			e.getStackTrace();
		}finally {
			try {
				con.close(); con = null;
				pstmt.close(); pstmt = null;
				rs.close(); rs=null;
			}catch(Exception e) {
				e.getStackTrace();
			}
		}
		
		return bb;
	}
	
	public String makeList() {
		String line = "";
		int num = 0;
		String title = "";
		String name = "";
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection(dbUrl,dbUser,dbPass);
			String sql ="SELECT * FROM board";
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				num = rs.getInt("num");
				title = rs.getString("title");
				name = rs.getString("name");
				String newLine="<tr><td>"+num+"</td><td><a href='readForm.jsp?num="+num+"'>"+title+"</a></td><td>"+name+"</td></tr>";
				line += newLine;
			}
			
		}catch(Exception e) {
			e.getStackTrace();
		}finally {
			try {
				con.close(); con = null;
				pstmt.close(); pstmt = null;
				rs.close(); rs=null;
			}catch(Exception e) {
				e.getStackTrace();
			}
		}
		
		return line;
	}
	
	public int indexNum() {
		int idx = 0;
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection(dbUrl,dbUser,dbPass);
			String sql ="SELECT max(num) mNum FROM board";
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				idx=rs.getInt("mNum")+1;
			}			
		}catch(Exception e) {
			e.getStackTrace();
		}finally {
			try {
				con.close(); con = null;
				pstmt.close(); pstmt = null;
				rs.close(); rs=null;
			}catch(Exception e) {
				e.getStackTrace();
			}
		}
		
		return idx;
	}
	
	public void insertBoard(boardBeans bb) {
		Connection con = null;
		PreparedStatement pstmt = null;
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection(dbUrl,dbUser,dbPass);
			String sql ="INSERT INTO board VALUES(?,?,?,?,?)";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1,bb.getNum());
			pstmt.setString(2, bb.getTitle());
			pstmt.setString(3, bb.getContent());
			pstmt.setString(4, bb.getName());
			pstmt.setString(5, bb.getPass());
			pstmt.executeUpdate();
			
		}catch(Exception e) {
			e.getStackTrace();
		}finally {
			try {
				con.close(); con = null;
				pstmt.close(); pstmt = null;
			}catch(Exception e) {
				e.getStackTrace();
			}
		}
		
	}
	
	
}