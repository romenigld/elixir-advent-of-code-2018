defmodule Day2 do

  def count_characters(string) when is_binary(string) do
    count_characters(string, %{})
  end

  defp count_characters(<<byte, rest::binary>>, acc) do
    acc = Map.update(acc, byte, 1, &(&1 +1))
    count_characters(rest, acc)
  end

  defp count_characters(<<>>, acc) do
    acc
  end
end
