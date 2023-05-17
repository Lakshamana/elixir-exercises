defmodule Greeter1 do
  def hello(person = %{name: person_name}) do
    IO.puts("Hello #{person_name}!")
    IO.inspect person
  end
end

Greeter1.hello(%{ name: "John", age: 21 })
# IO.puts(Greeter1.hello(%{ age: 21 }))  # this will raise an error
