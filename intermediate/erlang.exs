defmodule ExampleErlang do
  def timed(fun, args) do
    {time, result} = :timer.tc(fun, args)
    IO.puts "Time: #{time}µs"
    IO.puts "Result: #{result}"
  end
end

ExampleErlang.timed(fn -> IO.puts("Hello World!") end, [])
ExampleErlang.timed(&((&1 * &1) * &1), [100])
