package testing_system_5;

public class Hinhchunhat implements TinhToan {
	protected float chieuDai;
	protected float chieuRong;
	
	public float ChuVi()
	{
		return (chieuDai + chieuRong) * 2;
	}
	public float DienTich()
	{
		return chieuDai * chieuRong;
	}
	
}
