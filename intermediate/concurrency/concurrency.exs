defmodule ExampleErlang do
  def add(a, b) do
    IO.puts a + b
  end
end

spawn(ExampleErlang, :add, [1, 2])
