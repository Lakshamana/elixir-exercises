defmodule Sayings.Greetings do
  def basic(name), do: "Hi, #{name}"
end

defmodule Example do
  alias Sayings.Greetings, as: Hi
  # alias Sayings.{Greetings, Farewells} -- for multiple aliases

  def greeting(name), do: Hi.basic(name)
end


defmodule Example2 do
  def greeting(name), do: Sayings.Greetings.basic(name)
end

IO.puts(Example2.greeting("John"))
