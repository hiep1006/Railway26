package com.vti.entity;

public class CongNhan extends CanBo {
	private int bac;
	public CongNhan(String hoTen, int tuoi, GioiTinh gioiTinh, String diaChi) {
		super(hoTen, tuoi, gioiTinh, diaChi);
		// TODO Auto-generated constructor stub
	}
	public int getBac() {
		return bac;
	}

	public void setBac(int bac) {
		this.bac = bac;
	}
	
}
