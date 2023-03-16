import java.util.Scanner;
import java.util.Random;

public class DiceRoller {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        Random rand = new Random();

        System.out.print("주사위를 몇 번 던지시겠습니까? ");
        int numRolls = sc.nextInt();

        int sum = 0;
        for (int i = 0; i < numRolls; i++) {
            int roll = rand.nextInt(6) + 1;
            sum += roll;
            System.out.println(i + "번째 숫자는 " + roll + "입니다.");
        }
        System.out.println("주사위를"+ numRolls + "번 던진 결과, 총 합은 " + sum + "입니다.");
    }
}
