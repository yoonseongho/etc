import java.util.LinkedList;

public class Linked {
    public static void main(String[] args) {

        LinkedList<String> animals = new LinkedList<>();

        animals.add("dog");
        animals.add("cat");
        animals.addFirst("cow");
        animals.addLast("mouse");
        animals.add(0, "cow");

        for(String i : animals) {
            System.out.print(i + " ");
        }
        animals.set(0, "human");
        System.out.println(animals);

        System.out.println("cat이 있나요 ? " + animals.contains("cat"));
        System.out.println("cat이 들어있는 인덱스는 ? " + animals.indexOf("cat"));

        System.out.println(animals.get(3));
    }
}