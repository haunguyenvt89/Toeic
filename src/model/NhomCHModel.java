package model;

import java.sql.ResultSet;
import java.sql.SQLException;

public class NhomCHModel {
	DatabaseManager db;
	public String getNhomCH(int MaNhom) throws SQLException
	{
		String content= "";
		db = new DatabaseManager();
		String sql = "Select * from NhomCH Where MaNhom = '2'";
		db.open();
		ResultSet rs = db.executeQuery(sql);
		if(rs.next())
			content = rs.getString("NoiDung_Text");
		
		return content;
	}

}
