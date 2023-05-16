defmodule Greeter do
  def hello(name), do: "Hello, #{name}"
end

IO.inspect Greeter.hello("Lakshamana")

defmodule Length do
  def of([]), do: 0
  def of([_ | tail]), do: 1 + of(tail)
end

IO.inspect Length.of([])
IO.inspect Length.of([1, 2, 3])
