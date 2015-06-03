package pojo;

import java.sql.Date;

public class User {

	private String MaND;
	private String HoTen;
	private String Email;
	private String Username;
	private String Password;
	private int Trangthai;
	private Date ngaytao;
	private int Loaiuser;
	public int getLoaiuser() {
		return Loaiuser;
	}
	public void setLoaiuser(int loaiuser) {
		Loaiuser = loaiuser;
	}
	public String getMaND() {
		return MaND;
	}
	public void setMaND(String maND) {
		MaND = maND;
	}
	public String getHoTen() {
		return HoTen;
	}
	public void setHoTen(String hoTen) {
		HoTen = hoTen;
	}
	public String getEmail() {
		return Email;
	}
	public void setEmail(String email) {
		Email = email;
	}
	public String getUsername() {
		return Username;
	}
	public void setUsername(String username) {
		Username = username;
	}
	public String getPassword() {
		return Password;
	}
	public void setPassword(String password) {
		Password = password;
	}
	public int getTrangthai() {
		return Trangthai;
	}
	public void setTrangthai(int trangthai) {
		Trangthai = trangthai;
	}
	public Date getNgaytao() {
		return ngaytao;
	}
	public void setNgaytao(Date ngaytao) {
		this.ngaytao = ngaytao;
	}
	
	
}
