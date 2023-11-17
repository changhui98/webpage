package com.hui.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.hui.common.DBConPool;
import com.hui.dto.BoardDto;

public class BoardDao extends DBConPool{
	
	public BoardDto getOne(String num) {
		BoardDto dto = new BoardDto();
		String sql = "";
		
		
		
		return dto;
	}
	

	public List<BoardDto> getList(){
		List<BoardDto> list = new ArrayList<>();
		String sql = "select * from board";
		
		try {
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				BoardDto dto = new BoardDto();
				dto.setNum(rs.getString(1));
				dto.setTitle(rs.getString(2));
				dto.setContent(rs.getString(3));
				dto.setId(rs.getString(4));
				dto.setPostdate(rs.getString(5));
				dto.setVisitcount(rs.getString(6));
				
				list.add(dto);
			}
			
		}catch(SQLException e) {
			System.out.println("예외 발생 : BoardDao getList");
			e.printStackTrace();
		}
		
		return list;
	}
	
}
