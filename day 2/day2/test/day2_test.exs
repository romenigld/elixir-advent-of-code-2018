defmodule Day2Test do
  use ExUnit.Case

  doctest Day2

  test "count characters" do
    assert Day2.count_characters("éaabbé") == %{
      ?a => 2,
      ?b => 2,
      ?é => 2
    }
  end
end
