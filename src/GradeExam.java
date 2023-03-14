import java.util.Scanner;

public class GradeExam {

    public static void main(String[] args) {
        Scanner scan = new Scanner(System.in);



        System.out.println("수학, 과학 , 영어 순으로 3과목의 점수 입력 >> " );
        int math = scan.nextInt();
        int science = scan.nextInt();
        int english = scan.nextInt();

        Grade gr = new Grade(math,science,english);
        gr.average();
    }
}

class Grade{
    int math;
    int science;
    int english;

    public Grade() {
        // TODO Auto-generated constructor stub
    }

    public Grade(int math, int science, int english) {
        this.math = math;
        this.science = science;
        this.english = english;
    }

    public void average() {
        System.out.println("평균 : " + (math+science+english)/3);
    }
}