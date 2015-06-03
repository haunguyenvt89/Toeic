package model;

import java.awt.List;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import pojo.User;
public class Accountmanager {
	DatabaseManager db;
	public int	checkLogin(String username, String password) throws SQLException
	{
		db = new DatabaseManager();
		db.open();
		String sql = "Select * from nguoidung Where username = '" + username + "' and password = '" + password + "'";
		ResultSet rs = db.query(sql);
		if (rs.next()) {
			int kq = rs.getInt("loaiuser");
			if(kq== 1)
				return 1;
			else
				if(kq == 2)
					return 2;
		}
		return 0;
	}
	public ArrayList<User> getUser()
	{
		ArrayList<User> lstuser = null;
		return lstuser;
	}
	
}
