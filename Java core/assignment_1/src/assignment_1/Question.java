package assignment_1;

import java.sql.Date;

public class Question {
	int questionId;
	String content;
	int categoyId;
	CategoryQuestion[] category;
	int typeId;
	TypeQuestion[] type;
	int creatorId;
	Account[] account;
	Date createDate;
}
