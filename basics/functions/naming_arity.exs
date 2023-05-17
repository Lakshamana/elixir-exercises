defmodule Greeter2 do
  def hello(), do: "Hello anonymous person!"  # hello/0
  def hello(name), do: "Hello #{name}!"  # hello/1
  def hello(name1, name2), do: "Hello #{name1} and #{name2}!"  # hello/2
end

IO.puts(Greeter2.hello())
IO.puts(Greeter2.hello("John"))
IO.puts(Greeter2.hello("John", "Doe"))
