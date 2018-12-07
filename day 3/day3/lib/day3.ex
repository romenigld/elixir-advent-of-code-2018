defmodule Day3 do
  @doc """
  Parses a claim.

  ## Examples

    iex> Day3.parse_claim("#1 @ 100,366: 24x27")
    [1, 100, 366, 24, 27]

  """
  def parse_claim(string) when is_binary(string) do
    string
    |> String.split(["#", " @ ", ",", ": ", "x"], trim: true)
    |> Enum.map(&String.to_integer/1)
  end
end
