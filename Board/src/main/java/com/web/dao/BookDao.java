package com.web.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.hui.common.DBConPool;
import com.web.dto.BookDto;

public class BookDao extends DBConPool{

	public List<BookDto> getList(){
		List<BookDto> list = new ArrayList<>();
		String sql = "select  *\r\n"
					+ "from(   select  rownum rnum, b.*\r\n"
					+ "        from(   select  *\r\n"
					+ "                from    book\r\n"
					+ "                order by no desc\r\n"
					+ "        )b\r\n"
					+ "    )\r\n"
					+ "where rnum between 1 and 15";
		
		try {
			pstmt =con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				BookDto dto = new BookDto();
				dto.setNo(rs.getString("no"));
				dto.setTitle(rs.getString("title"));
				dto.setRentyn(rs.getString("rentyn"));
				dto.setAuthor(rs.getString("author"));
				
				list.add(dto);
			}
			
		}catch(SQLException e) {
			System.out.println("예외 발생 : BookDao getList");
			e.printStackTrace();
		}
		return list;
	}
}
