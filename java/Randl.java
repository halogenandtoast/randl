import java.util.*;
import java.util.concurrent.ThreadLocalRandom;

public class Randl {
  public static void main(String[] args) {
    List<String> names = Arrays.asList("Matt", "Brandy");
    List<String> factions = Arrays.asList("American", "British");

    shuffleArray(names);
    shuffleArray(factions);

    for(int i = 0; i < names.size(); i++) {
      System.out.print("(");
      System.out.print(names.get(i));
      System.out.print(", ");
      System.out.print(factions.get(i));
      System.out.println(")");
    }
  }

  static void shuffleArray(List<String> arr) {
    Random rnd = ThreadLocalRandom.current();
    for (int i = arr.size() - 1; i > 0; i--)
    {
      int index = rnd.nextInt(i + 1);
      String a = arr.get(index);
      arr.set(index, arr.get(i));
      arr.set(i, a);
    }
  }
}
