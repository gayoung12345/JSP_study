package dao;

import java.util.ArrayList;
import dto.Book;

public class BookRepository {
	
	private ArrayList<Book> listOfBooks=new ArrayList<Book>();
	private static BookRepository instance = new BookRepository();
	
	public static BookRepository getInstance() {
		return instance;
	}
	
	public BookRepository() {
		Book book1=new Book("ISBN1234", "C#프로그래밍", 27000);
		book1.setAuthor("우재남");
		book1.setDescription("C#을 처음 접하는 독자들을 대상으로 ... 예제 모음으로 한번 더 복습할 수 있다.");
		book1.setPublisher("한빛 아카데미");
		book1.setCategory("IT모바일");
		book1.setUnitsInStock(1000);
		book1.setReleaseDate("2022/10/06");
		book1.setFilename("ISBN1234.jpg");
		
		Book book2 = new Book("ISBN1235", "자바마스터", 30000);
		book2.setAuthor("송미영");
		book2.setDescription("자바를 처음 배우는 학생 ... 구성하였습니다.");
		book2.setPublisher("한빛 아카데미");
		book2.setCategory("IT모바일");
		book2.setUnitsInStock(1000);
		book2.setReleaseDate("2023/01/01");
		book2.setFilename("ISBN1235.jpg");
		
		Book book3 = new Book("ISBN1236", "파이썬 프로그래밍", 30000);
		book3.setAuthor("최성철");
		book3.setDescription("파이썬으로 프로그래밍을 ... 기법도 배웁니다.");
		book3.setPublisher("한빛 아카데미");
		book3.setCategory("IT모바일");
		book3.setUnitsInStock(1000);
		book3.setReleaseDate("2023/01/01");
		book3.setFilename("ISBN1236.jpg");
		
		listOfBooks.add(book1);
		listOfBooks.add(book2);
		listOfBooks.add(book3);
		
	}
	//객체타입 변수 listOfBooks에 저장된 모든 도서 목록을 가져오는 getAllBooks()메소드 작성
	
	public ArrayList<Book> getAllBooks() {
		return listOfBooks;
	}
	public Book getBookById(String bookId) {
		Book bookById=null;
		
		for (int i=0; i<listOfBooks.size(); i++) {
			Book book = listOfBooks.get(i);
			if (book!=null && book.getBookId()!=null &&
			book.getBookId().equals(bookId)) {
				bookById=book;
				break;
			}
		}
		return bookById;
	}
	
	
	// 신규 도서 데이터를 저장
	public void addBook(Book book) {
		System.out.println(book);
		listOfBooks.add(book);
		
	}
}
