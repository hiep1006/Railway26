package com.vti.entity;

import java.util.Iterator;
import java.util.List;
import java.util.Scanner;

import debug.entity.CanBo;

public class QLCB {
	private List<CanBo> canBo;
	public QLCB(List<CanBo> canBo) {
		this.canBo = canBo;
	}
	public void ThemCanBo(String hoTen, int tuoi, GioiTinh gioiTinh, String diaChi)
	{
		Scanner s = new Scanner(System.in);
		System.out.print("Bạn muốn thêm bao nhiêu cán bộ: ");
		int slCanbo = s.nextInt();
		for (int i = 0; i < slCanbo; i++) {
			System.out.print("Bạn muốn nhập vào nhân viên(nhập vào 1), Công nhân (nhập vào 2), kỹ sư (nhập vào 3): ");
			int choose = s.nextInt();
			switch (choose) {
			case 1:
				NhanVien nhanVien = new NhanVien(hoTen, tuoi, gioiTinh, diaChi);
				System.out.print("Nhap cong viec: ");
				String congViec = s.nextLine();
				nhanVien.setCongViec(congViec);
				break;
			case 2:
				CongNhan c = new CongNhan(hoTen, tuoi, gioiTinh, diaChi);
				System.out.print("Nhap bac: ");
				int bac = s.nextInt();
				c.setBac(bac);
				break;
			case 3:
				KySu k = new KySu(hoTen, tuoi, gioiTinh, diaChi);
				System.out.print("Nhap nganh dao tao: ");
				String nganhDaoTao = s.nextLine();
				k.setNganhDaoTao(nganhDaoTao);
				break;
			default:
				break;
			}
		}
	}
}
