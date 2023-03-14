import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int a, b = 0; // a: 별의 개수 b: 방향
        System.out.print("별의 개수:");
        a = sc.nextInt();
        System.out.print("방향 :");
        b = sc.nextInt();

        if(b==1) {
            for(int i = 1; i <=a; i++) {
                for(int j = 1; j <= i; j++) {
                    System.out.print("*");
                }
                System.out.println();
            }
        } else if(b==2) {
            for(int i = a; i >= 1; i--) {
                for(int j = 1; i <= i; j++) {
                    System.out.print("*");
                }
                System.out.println();
            }
        }
    }
}