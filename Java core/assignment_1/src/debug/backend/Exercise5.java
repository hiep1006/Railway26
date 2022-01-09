package debug.backend;

import java.util.Scanner;

import debug.entity.QLCB;

public class Exercise5 {

	public void question1_2() {
		Scanner scanner = new Scanner(System.in);
		QLCB qlcb = new QLCB();

		System.out.println("Mời bạn nhập vào chức năng muốn dùng\n" + "1.Thêm mới cán bộ\n" + "2.Tìm kiếm theo họ tên\n"
				+ "3.Hiện thị thông tin về danh sách các cán bộ.\n" + "4.Nhập vào tên của cán bộ và delete cán bộ đó\n"
				+ "5.Thoát khỏi chương trình.");
		System.out.print("Mời bạn chọn chức năng: ");

		int choose = scanner.nextInt();
		while (true) {
			switch (choose) {
			case 1:
				qlcb.addCanBo();
				break;
			case 2:
				qlcb.findByName();
				break;
			case 3:
				qlcb.printListCanBo();
				break;
			case 4:
				qlcb.deleteCanBo();
				break;
			case 5:
				return;
			default:
				System.out.println("Báº¡n Ä‘Ã£ nháº­p sai. Báº¡n chá»‰ Ä‘Æ°á»£c nháº­p tá»« 1 tá»›i 5 thÃ´i!");
				break;
			}
		}
	}
}
