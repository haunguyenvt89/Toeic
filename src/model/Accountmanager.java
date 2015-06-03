package model;

import java.awt.List;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

import pojo.User;

public class Accountmanager {
	DatabaseManager db;

	public int checkLogin(String username, String password) throws SQLException {
		db = new DatabaseManager();
		db.open();
		int flag = 0;
		String sql = "Select * from nguoidung Where username = '" + username
				+ "' and password = '" + password + "'";
		ResultSet rs = db.executeQuery(sql);
		if (rs.next()) {
			int kq = rs.getInt("loaiuser");
			if (kq == 1)
				flag = 1;
			else if (kq == 2)
				flag = 2;
		}
		db.close();
		return flag;
	}

	public ArrayList<User> getUser() throws SQLException {
		ArrayList<User> lstuser = null;
		db = new DatabaseManager();
		db.open();
		String sql = "Select * from nguoidung Where Loaiuser = 2";
		ResultSet rs = db.executeQuery(sql);
		while (rs.next()) {
			User u = new User();
			u.setMaND(rs.getString("MaND"));
			u.setHoTen(rs.getString("HoTen"));
			u.setEmail(rs.getString("Email"));
			u.setUsername(rs.getString("username"));
			u.setTrangthai(rs.getInt("TrangThai"));
			u.setLoaiuser(rs.getInt("Loaiuser"));
			lstuser.add(u);
		}
		db.close();
		return lstuser;
	}

	public boolean ThemNguoiDung(User u) throws SQLException {
		boolean kq = false;

		DateFormat datefm = new SimpleDateFormat("yyyy-mm-dd");
		String sql = String
				.format("Insert into nguoidung values (%s, '%s','%s','%s','%s',%d,'%s', 2)",
						u.getMaND(), u.getHoTen(), u.getEmail(),
						u.getUsername(), u.getPassword(), u.getTrangthai(),
						datefm.format(u.getNgaytao()));
		db = new DatabaseManager();
		int n = db.executeUpdate(sql);
		if (n == 1)
			kq= true;
		db.close();
		return kq;
		
	}

}
