package testing_system_5;

public class HinhVuong extends Hinhchunhat {
	@Override
	public float ChuVi()
	{
		return (chieuDai + chieuRong) * 2;
	}
	public float DienTich()
	{
		return chieuDai * chieuRong;
	}
}
