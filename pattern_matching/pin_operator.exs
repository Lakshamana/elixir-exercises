x = 1
{ x, ^x } = { 2, 1 }

IO.inspect x  # 2


key = "hello"
%{ ^key => value } = %{ "hello" => "world" }
# %{ "hello" => value } = %{ "hello" => "world" }  # equivalent as above
# %{ key => value } = %{ "hello" => "world" }  # error: literals as keys only

IO.inspect "key: #{key}"
IO.inspect "value: #{value}"


greeting = "Hello"

greet = fn
  (^greeting, name) -> "Hi #{name}"
  (greeting, name) -> "#{greeting}, #{name}"
end

IO.inspect greet.("Hello", "Lakshamana")  # will match value "Hello"
IO.inspect greet.("Different value", "Lakshamana")
