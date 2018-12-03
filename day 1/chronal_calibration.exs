defmodule ChronalCalibration do
  def frequency(list) do
    Enum.reduce(list, 0, &+/2)
  end

  def values do
    values = File.stream!("puzzle_input.txt")

    result = values
    |> Enum.map(&String.trim/1)
    |> Enum.map(&String.to_integer/1)
    |> ChronalCalibration.frequency()
  end
end

IO.puts "+1, -2, +3, +1 resuts in: #{ChronalCalibration.frequency([+1, -2, +3, +1])}"
IO.puts "+1, +1, +1 resuts in: #{ChronalCalibration.frequency([+1, +1, +1])}"
IO.puts "+1, +1, -2 resuts in: #{ChronalCalibration.frequency([+1, +1, -2])}"
IO.puts "-1, -2, -3 resuts in: #{ChronalCalibration.frequency([-1, -2, -3])}"
IO.puts "The total from the file 'puzzle_input.txt' is: #{ChronalCalibration.values}"
