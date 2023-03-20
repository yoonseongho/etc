import java.util.ArrayList;
import java.util.Arrays;

public class ArrayExam {
    public static void main(String[] args) {
        String[] array = new String[2];
        array[0] = "one";
        array[1] = "two";

        for (String str : array) {
            System.out.println(str);
        }

        ArrayList<String> arrayList = new ArrayList<String>();
        arrayList.add("one");
        arrayList.add("two");

        for (int i=0; i< arrayList.size(); i++) {
            System.out.println(arrayList.get(i));
        }

        ArrayList<Integer> list = new ArrayList<Integer>();
        list.add(3);
        list.add(2);
        list.add(4);
        list.add(5);
        list.add(6);

        for (int i=0; i< list.size(); i++) {
            System.out.println(list.get(i));
        }

        ArrayList<String> colors = new ArrayList<>(Arrays.asList("Black", "White", "Green", "Red"));

        for(String str : colors) {
            System.out.print(str + " ");
        }

        ArrayList<Stu> student = new ArrayList<>();

    }
}

class Stu {
    String name;
    String phone;
    int age;
}