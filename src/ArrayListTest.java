import java.util.ArrayList;
import java.util.Scanner;

public class ArrayListTest {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        ArrayList<String> names = new ArrayList<>();

        for (int i = 1; i <= 5; i++) {
            System.out.println("이름을 입력해주세여");
            String name = sc.nextLine();
            names.add(name);
        }

        int count = 0;
        System.out.println("성이 '김'인 분의 이름을 모두 출력합니다.");
        for (String name : names) {
            if(name.startsWith("김")) {
                System.out.print(name + " ");
                count++;
            }
        }

        System.out.println("\n" + "김씨 성을 가진 분은 모두 " + count + "명 입니다.");
    }
}
