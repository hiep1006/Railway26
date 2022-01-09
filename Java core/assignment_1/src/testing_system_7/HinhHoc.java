package testing_system_7;

public class HinhHoc{
	Configs c;
	public HinhHoc() throws Exception
	{
		c = new Configs();
		if(c.SO_LUONG_HINH > 5)
		{
			throw new Exception("So luong hinh khong vuot qua 5");
		}
	}
	

}
