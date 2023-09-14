x = try do
  for x <- 0..10 do
    if x == 5, do: throw x
    IO.puts(x)
  end
catch
  x -> "Caught: #{x}"
end

IO.puts(x)
