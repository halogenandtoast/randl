using System;
using System.Collections.Generic;
using System.Linq;

public static class Randl
{
  private static Random rng = new Random();

  public static void Main()
  {
    var names = new List<string>(new string[] { "Matt", "Brandy" });
    var factions = new List<string>(new string[] { "American", "British" });
    names.Shuffle();
    factions.Shuffle();
    var pairs = names.Zip(factions, (name, faction) => new Tuple<string, string>(name, faction));
    foreach(var tuple in pairs)
    {
      PrintTuple(tuple);
    }
  }

  private static void PrintTuple(Tuple<string, string> t)
  {
    Console.WriteLine("({0}, {1})", t.Item1, t.Item2);
  }

  public static void Shuffle<T>(this IList<T> list)
  {
    int n = list.Count;
    while (n > 1) {
      n--;
      int k = rng.Next(n + 1);
      T value = list[k];
      list[k] = list[n];
      list[n] = value;
    }
  }
}


