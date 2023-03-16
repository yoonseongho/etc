class Pokemon {
    String pokeName;
    int legs;
    String skill;

    public Pokemon() {
        pokeName = "";
        legs = 0;
        skill = "";
    }

    public Pokemon(String name, int numLegs, String type) {
        pokeName = name;
        legs = numLegs;
        skill = type;
    }

    public void showInformation() {
        System.out.println("포켓몬 이름: " + pokeName);
        System.out.println("다리 갯수: " + legs);
        System.out.println("기술: " + skill);
    }
}

public class PokemonTest {
    public static void main(String[] args) {
        Pokemon pikachu = new Pokemon();
        pikachu.pokeName = "피카츄";
        pikachu.legs = 4;
        pikachu.skill = "물";

        pikachu.showInformation();

        Pokemon pairi = new Pokemon("파이리", 4, "불");
        pairi.showInformation();
    }
}