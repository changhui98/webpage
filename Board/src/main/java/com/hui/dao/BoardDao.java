package com.hui.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.hui.common.DBConPool;
import com.hui.dto.BoardDto;
import com.hui.dto.Criteria;

public class BoardDao extends DBConPool{
	
	public int visitUp(String num) {
		int res=0;
		String sql = "update board\r\n"
				+ "set visitcount = visitcount+1\r\n"
				+ "where num=?";
		
		try {
			pstmt= con.prepareStatement(sql);
			pstmt.setString(1, num);
			res = pstmt.executeUpdate();
			
		}catch(SQLException e) {
			System.out.println("예외 발생 : BoardDao visitUp");
			e.printStackTrace();
		}
		
		return res; 
	}
	
	
	public BoardDto getOne(String num) {
		BoardDto dto = new BoardDto();
		String sql= "select  *\r\n"
				+ "from    board\r\n"
				+ "where   num=?";
		
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, num);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				dto.setNum(rs.getString(1));
				dto.setTitle(rs.getString(2));
				dto.setContent(rs.getString(3));
				dto.setId(rs.getString(4));
				dto.setPostdate(rs.getString(5));
				dto.setVisitcount(rs.getString(6));
				
				return dto;
			}else {
				return null;
			}
			
		}catch(SQLException e) {
			System.out.println("예외 발생 : BoardDao getOne");
			e.printStackTrace();
			return null;
		}
		
	}
	

	public List<BoardDto> getList(Criteria cri){
		
		List<BoardDto> list = new ArrayList<>();
		String sql = "select  *\r\n"
					+ "from    (\r\n"
					+ "    select rownum rnum, b.*\r\n"
					+ "    from    (select  * \r\n"
					+ "            from    board\r\n"
					+ "            order by num desc\r\n"
					+ "            )b\r\n"
					+ "        )\r\n"
					+ "where rnum between ? and ?\r\n";

		
		try {
			pstmt = con.prepareStatement(sql);
			
			pstmt.setInt(1, cri.getStartNum());
			pstmt.setInt(2, cri.getEndNum());
			
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
	
	public int getTotalCnt() {
		int res =0;
		String sql = "select count(*) from board";
		
		try {
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				res=rs.getInt(1);
			}
			
		}catch(SQLException e) {
			System.out.println("예외 발생 : BoardDao getTotalCnt");
			e.printStackTrace();
		}
		
		
		return res;
	}
	
}
