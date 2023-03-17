import java.util.Scanner;

public class SubTest {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        System.out.print("문자열 입력: ");
        String s1 = sc.next();

        System.out.println(s1.substring(s1.length()-3));
    }
}