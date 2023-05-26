list = [1, 2, 3, 4, 5]

# keyword list
kwl = [one: 1, two: 2, three: 3]

# maps
m = %{"a" => "A", "b" => "B", "c" => "C", "d" => "D", "e" => "E"}

# binaries
bin = <<1, 2, 3, 4, 5>>

IO.inspect(for x <- list, do: x * x)
IO.inspect(for {k, v} <- kwl, do: "#{k}: #{v}")
IO.inspect(for {k, v} <- m, do: {k, v})

IO.inspect(for <<c <- "hello">>, do: <<c>>)  # ["h", "e", "l", "l", "o"]
IO.inspect(for <<c <- "hello">>, do: c)  # 'hello'

IO.inspect(for {:ok, val} <- [ok: "Hello", error: "Unknown", ok: "World"], do: val)
IO.inspect(for {:error, val} <- [ok: "Hello", error: "Unknown", ok: "World"], do: val)

# multiple generators
result = for n <- list, m <- 1..5, do: String.duplicate("*", m)
IO.inspect(length(result))
