package pojo;

import java.sql.Time;

public class Lanthi {
	private String Mathi;
	private String Made;
	private String MaND;
	private Time TGBD;
	private Time TGKT;
	private int Trangthai;
	String getMathi() {
		return Mathi;
	}
	void setMathi(String mathi) {
		Mathi = mathi;
	}
	String getMade() {
		return Made;
	}
	void setMade(String made) {
		Made = made;
	}
	String getMaND() {
		return MaND;
	}
	void setMaND(String maND) {
		MaND = maND;
	}
	Time getTGBD() {
		return TGBD;
	}
	void setTGBD(Time tGBD) {
		TGBD = tGBD;
	}
	Time getTGKT() {
		return TGKT;
	}
	void setTGKT(Time tGKT) {
		TGKT = tGKT;
	}
	int getTrangthai() {
		return Trangthai;
	}
	void setTrangthai(int trangthai) {
		Trangthai = trangthai;
	}
}
