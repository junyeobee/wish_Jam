package com.manage.wishJam;

import java.sql.*;
import java.util.*;
public class MemberExDAO {
	Connection con;
	PreparedStatement ps;
	ResultSet rs;
	public MemberExDAO() {
		// TODO Auto-generated constructor stub
	}
	public int getMaxRef() {
		try {
			String sql = "select max(ref) from jsp_bbs";
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			int num = 0;
			if(rs.next()) {
				num = rs.getInt(1);
			}
			
			return num;
		}catch(Exception e) {
			e.printStackTrace();
			return 0;
		}finally {
			try {
				if (rs != null)rs.close();
				if (ps != null)ps.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}
	
	public ArrayList<MemberExDTO> allMem(){
		try {
			con = com.db.wishJam.DbConn.getConn();
			String sql = "select * from member";
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			ArrayList<MemberExDTO> arr = new ArrayList<MemberExDTO>();
			if(rs.next()) {
				do {
					MemberExDTO n = new MemberExDTO(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5),rs.getString(6),rs.getString(7),rs.getString(8),rs.getString(9),rs.getString(10));
					arr.add(n);
				}while(rs.next());
			}
			return arr;
			
		}catch(Exception e){
			e.printStackTrace();
			return null;
		}finally {
			try {
				if (rs != null)
					rs.close();
				if (ps != null)
					ps.close();
				if (con != null)
					con.close();
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
	}
}
