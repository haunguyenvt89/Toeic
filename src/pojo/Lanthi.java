package pojo;

import java.sql.Time;

public class Lanthi {
	private String Mathi;
	private String Made;
	public String getMathi() {
		return Mathi;
	}
	public void setMathi(String mathi) {
		Mathi = mathi;
	}
	public String getMade() {
		return Made;
	}
	public void setMade(String made) {
		Made = made;
	}
	public String getMaND() {
		return MaND;
	}
	public void setMaND(String maND) {
		MaND = maND;
	}
	public Time getTGBD() {
		return TGBD;
	}
	public void setTGBD(Time tGBD) {
		TGBD = tGBD;
	}
	public Time getTGKT() {
		return TGKT;
	}
	public void setTGKT(Time tGKT) {
		TGKT = tGKT;
	}
	public int getTrangthai() {
		return Trangthai;
	}
	public void setTrangthai(int trangthai) {
		Trangthai = trangthai;
	}
	private String MaND;
	private Time TGBD;
	private Time TGKT;
	private int Trangthai;
}
