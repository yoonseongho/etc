import java.util.Scanner;

public class BookManager {
        public static void main(String[] args) {
            Scanner scan = new Scanner(System.in);

            System.out.print("이름을 입력하세요 >>");
            String name = scan.nextLine();
            System.out.println("안녕하세요 " + name + "님, 도서관리를 시작합니다.");

            Book b1 = new Book("이것이 자바다", "신용권", 100);
            Book b2 = new Book("정보 보안 개론", "양대일", 200);
            Book b3 = new Book("모의해킹이란 무엇인가", "조정원", 300);
            Book b4 = new Book("인생의 태도", "웨인 다이어", 400);

            System.out.println("현재 대여 가능한 책은 " + Book.getBookCount() + "권 입니다.");

            b1.rental();
            b2.rental();
            b3.rental();
            b1.back();
            b3.back();
            b2.check();
            b3.check();

            System.out.println("현재 대여 가능한 책은 " + Book.getBookCount() + "권 입니다.");
        }
    }

    class Book {
    private String title; // 책 제목
    private String writer; // 저자
    private int number; // 도서번호
    private boolean pos; // 대여 가능 여부
    private static int book_count = 0; // 남아있는 책 수

    public Book() {
        book_count++;
    }

    public Book(String title, String writer, int number) {
        this.title = title;
        this.writer = writer;
        this.number = number;
        this.pos = true;
        book_count++;
    }

    public void rental() {
        if (pos) {
            pos = false;
            book_count--;
            System.out.println(number + "번 대여 완료");
        } else {
            System.out.println(number + "번 이미 대여중입니다.");
        }
    }

    public void back() {
        if (!pos) {
            pos = true;
            book_count++;
            System.out.println(number + "번 반납 완료");
        } else {
            System.out.println(number + "번 이미 반납되었습니다.");
        }
    }

    public void check() {
        if (pos) {
            System.out.println(title + "는 대여 가능합니다.");
        } else {
            System.out.println(title + "는 이미 대여중입니다.");
        }
    }

    public String getTitle() {
        return title;
    }

    public String getWriter() {
        return writer;
    }

    public int getNumber() {
        return number;
    }

    public boolean getPos() {
        return pos;
    }

    public static int getBookCount() {
        return book_count;
    }
}
