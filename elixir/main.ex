defmodule Randl do
  def print_tuple({ left, right }) do
    IO.puts "(" <> left <> ", " <> right <> ")"
  end
end

names = Enum.shuffle ["Matt", "Brandy"]
factions = Enum.shuffle ["US", "British"]
pairs = List.zip [names, factions]

Enum.each pairs, fn pair ->
  Randl.print_tuple pair
end
