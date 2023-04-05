result = Enum.reduce([1, 2, 3, 4, 5], %{}, fn x, acc ->
  r = rem(x, 2)
  Map.put(acc, r, [x | acc[r] || []])
end)

IO.inspect result
