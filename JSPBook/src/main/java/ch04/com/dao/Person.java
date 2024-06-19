package ch04.com.dao;

public class Person {
	
	// member
	private int id = 20230821;
	private String name = "홍길순";

	// default constructor
	public Person() {
		// TODO Auto-generated constructor stub
	}
	
	// Getter(), Setter()
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}
	
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
}
// 자바빈즈 Person을 생성하고 useBean 액션 태그에 Person 클래스를 사용하여 아이디와 이름 출력
