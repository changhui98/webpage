package com.hui.dao;

import java.sql.SQLException;

import com.hui.common.DBConPool;
import com.hui.dto.MemberDto;

public class MemberDao extends DBConPool{
	
	public MemberDto login(String id, String pw) {
		
		MemberDto dto = new MemberDto();
		String sql="select *\r\n"
				+ "from member\r\n"
				+ "where id=?\r\n"
				+ "and pass=?";
		try {
			pstmt= con.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, pw);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				dto.setId(rs.getString(1));
				dto.setName(rs.getString(3));
				dto.setRegidate(rs.getString(4));
				return dto;
			}else {
				return null;
			}
			
		}catch(SQLException e) {
			System.out.println("예외발생 : MemeberDao login");
			e.printStackTrace();
			return null;
		}
	}
	
}
