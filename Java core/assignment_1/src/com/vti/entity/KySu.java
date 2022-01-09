package com.vti.entity;

public class KySu extends CanBo {
	public KySu(String hoTen, int tuoi, GioiTinh gioiTinh, String diaChi) {
		super(hoTen, tuoi, gioiTinh, diaChi);
		// TODO Auto-generated constructor stub
	}

	private String nganhDaoTao;

	public String getNganhDaoTao() {
		return nganhDaoTao;
	}

	public void setNganhDaoTao(String nganhDaoTao) {
		this.nganhDaoTao = nganhDaoTao;
	}
	
}
