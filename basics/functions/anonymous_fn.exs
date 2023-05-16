sum = fn a, b -> a + b end
#sum = fn (a, b) -> a + b end  # this is the same as above
IO.inspect(sum.(1, 2))

sum = &(&1 + &2)
IO.inspect(sum.(3, 2))
