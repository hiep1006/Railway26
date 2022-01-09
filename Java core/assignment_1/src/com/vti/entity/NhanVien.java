package com.vti.entity;

public class NhanVien extends CanBo {
	public NhanVien(String hoTen, int tuoi, GioiTinh gioiTinh, String diaChi) {
		super(hoTen, tuoi, gioiTinh, diaChi);
		// TODO Auto-generated constructor stub
	}

	private String congViec;
	
	public String getCongViec() {
		return congViec;
	}

	public void setCongViec(String congViec) {
		this.congViec = congViec;
	}
	
}
