defmodule Adding do
  def sum(x, y = 1), do: x + y

  def sum1(x), do: x + 1
end

# all of the following are equal
IO.inspect Enum.map([1, 2, 3], fn x -> Adding.sum(x, 1) end)
IO.inspect Enum.map([1, 2, 3], &Adding.sum(&1, 1))
IO.inspect Enum.map([1, 2, 3], &Adding.sum1/1)
