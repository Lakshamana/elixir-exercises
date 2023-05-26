import Integer

IO.inspect(for x <- 1..10, is_odd(x), do: x)
IO.inspect(for x <- 1..10, is_even(x), do: x)

IO.inspect(for x <- 1..100, is_even(x), rem(x, 3) == 0, do: x)

result = for { k, v } <- [one: 1, two: 2, three: 3], into: %{}, do: { k, v }
IO.inspect(result)

IO.inspect(for c <- [72, 101, 108, 108, 111], into: "", do: <<c>>)

IO.inspect(for n <- [1, 2, 3, 4, 5], into: "", do: ~s/#{n * n}/)
