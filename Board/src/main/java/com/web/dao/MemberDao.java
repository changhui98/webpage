package com.web.dao;

import java.sql.SQLException;

import com.hui.common.DBConPool;
import com.web.dto.MemberDto;

public class MemberDao extends DBConPool{

	public MemberDto login(String id, String pw) {
		MemberDto dto = new MemberDto();
		String sql = "select  *\r\n"
				+ "from    member\r\n"
				+ "where   id=?\r\n"
				+ "and     pass=?";
		
		try {
			pstmt = con.prepareStatement(sql);
					pstmt.setString(1, id);
					pstmt.setString(2, pw);
			rs = pstmt.executeQuery();
				
			if(rs.next()) {
				dto.setId(rs.getString("id"));
				dto.setName(rs.getString("name"));
				dto.setRegidate(rs.getString("regidate"));
			}else {
				return null;
			}
			
		}catch(SQLException e ) {
			e.printStackTrace();
			System.out.println("예외발생 : MemberDao login");
		}
		
		return dto;
	}
}
