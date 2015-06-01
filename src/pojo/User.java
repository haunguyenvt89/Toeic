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
	
	public User()
	{
		
	}
	public User (String name, String pass)
	{
		this.Username = name;
		this.Password = pass;
	}
	String getMaND() {
		return MaND;
	}
	void setMaND(String maND) {
		MaND = maND;
	}
	String getHoTen() {
		return HoTen;
	}
	void setHoTen(String hoTen) {
		HoTen = hoTen;
	}
	String getEmail() {
		return Email;
	}
	void setEmail(String email) {
		Email = email;
	}
	String getUsername() {
		return Username;
	}
	void setUsername(String username) {
		Username = username;
	}
	String getPassword() {
		return Password;
	}
	void setPassword(String password) {
		Password = password;
	}
	int getTrangthai() {
		return Trangthai;
	}
	void setTrangthai(int trangthai) {
		Trangthai = trangthai;
	}
	Date getNgaytao() {
		return ngaytao;
	}
	void setNgaytao(Date ngaytao) {
		this.ngaytao = ngaytao;
	}
}
