package Chapter;

import java.util.Scanner;
import java.util.Random;

public class Number {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        Random random = new Random();

        System.out.print("1부터 50까지의 숫자 중 하나를 입력하세요: ");
        int number = scanner.nextInt();

        for (int i = 1; i <= 5; i++) {
            System.out.print("추측한 숫자를 입력하세요: ");
            int guess = scanner.nextInt();
            int random_number = random.nextInt(50) + 1;
            if (guess == number) {
                System.out.println("정답입니다!");
                break;
            } else if (guess > number) {
                System.out.println("입력한 숫자가 큽니다.(" + i + ")");
            } else if(guess < number) {
                System.out.println("입력한 숫자가 작습니다.(" + i + ")");
            }
        }
        System.out.println("랜덤숫자는 " + number + "입니다.");
    }
}