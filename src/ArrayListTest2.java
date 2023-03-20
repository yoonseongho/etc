import java.util.ArrayList;
import java.util.Scanner;

public class ArrayListTest2 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        ArrayList<String> nicknames = new ArrayList<String>();

        for (int i = 1; i <= 5; i++) {
            System.out.print("별명을 입력하세요: ");
            String nickname = scanner.nextLine();
            nicknames.add(nickname);
        }

        String longNickname = "";
        for (String nickname : nicknames) {
            if (nickname.length() > longNickname.length()) {
                longNickname = nickname;
            }
        }

        System.out.println("가장 긴 별명: " + longNickname);
    }
}