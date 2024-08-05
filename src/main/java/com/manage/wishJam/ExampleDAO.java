package com.manage.wishJam;

import java.sql.*;
import java.util.*;

public class ExampleDAO {
	Connection con;
	PreparedStatement ps;
	ResultSet rs;
	
	public ExampleDAO() {
		// TODO Auto-generated constructor stub
	}
	
	public ArrayList<ExampleDTO> ex(){
		try {
			con = com.db.wishJam.DbConn.getConn();
			String sql = "select * from grade";
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			ArrayList<ExampleDTO> arr = new ArrayList<ExampleDTO>();
			rs.next();
			if(rs!=null) {
				ExampleDTO e = new ExampleDTO(rs.getString(1), rs.getInt(2));
				arr.add(e);
			}else {
				return null;
			}
			return arr;
		}catch(Exception e) {
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
	public int gradeEdit(int num) {
		try {
			con = com.db.wishJam.DbConn.getConn();
			String sql = "update grade set g_point = ? where g_name = '예시'";
			ps = con.prepareStatement(sql);
			ps.setInt(1, num);
			int num2 = ps.executeUpdate();
			return num2;
		}catch(Exception e) {
			e.printStackTrace();
			return -1;
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
