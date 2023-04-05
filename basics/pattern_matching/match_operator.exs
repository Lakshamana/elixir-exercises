list = [1, 2, 3]
[1 | tail] = list

IO.inspect list
IO.inspect tail

{ :ok, value } = { :ok, "Successful!" }
IO.inspect value
