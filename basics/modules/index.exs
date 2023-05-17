defmodule Example do
  def greeting(name) do
    "Hello, #{name}"
  end
end

defmodule Example.Greeting do
  def morning(name) do
    "Good morning, #{name}"
  end

  def evening(name) do
    "Good evening, #{name}"
  end
end

defmodule Example2 do
  @greeting "Hello"

  def greeting(name) do
    ~s(#{@greeting}, #{name}.)  # same as "#{@greeting}, #{name}."
  end
end

IO.puts(Example.greeting("John"))
IO.puts(Example.Greeting.morning("Mrs. Robinson"))
IO.puts(Example.Greeting.evening("Mrs. Robinson"))
IO.puts(Example2.greeting("John"))
