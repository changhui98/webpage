package com.web.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.hui.common.DBConPool;
import com.web.dto.BoardDto;

public class BoardDao extends DBConPool{
	
	public int visitUp(String num) {
		int res=0;
		String sql="update  board\r\n"
					+ "set     visitcount= visitcount +1\r\n"
					+ "where   num=?";
		
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, num);
			res = pstmt.executeUpdate();
					
		}catch(SQLException e) {
			e.printStackTrace();
			System.out.println("예외 발생 : BoardDao visitUp");
		}
		
		return res;
	}
	
	public BoardDto getOne(String num) {
		BoardDto dto = new BoardDto();
		String sql ="select  *\r\n"
					+ "from    board\r\n"
					+ "where   num=?";
		
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, num);
			rs = pstmt.executeQuery();
					
			if(rs.next()) {
				dto.setNum(rs.getString("num"));
				dto.setTitle(rs.getString("title"));
				dto.setContent(rs.getString("content"));
				dto.setId(rs.getString("id"));
				dto.setPostdate(rs.getString("postdate"));
				dto.setVisitcount(rs.getString("visitcount"));
			}
		}catch(SQLException e) {
			e.printStackTrace();
			System.out.println("예외 발생 : BoardDao getOne");
		}
		
		return dto;
	}

	public List<BoardDto> getList(){
		List<BoardDto> list = new ArrayList<>();
		String sql = "select  *\r\n"
					+ "from    board";
		
		try {
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				BoardDto dto = new BoardDto();
				dto.setNum(rs.getString("num"));
				dto.setTitle(rs.getString("title"));
				dto.setContent(rs.getString("content"));
				dto.setId(rs.getString("id"));
				dto.setPostdate(rs.getString("postdate"));
				dto.setVisitcount(rs.getString("visitcount"));
				
				list.add(dto);
			}
					
		}catch(SQLException e) {
			e.printStackTrace();
			System.out.println("예외 발생 : BoardDao getList");
		}
		return list;
	}
	
}
