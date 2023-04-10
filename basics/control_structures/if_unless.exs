if String.valid?("Hello") do
  IO.inspect "Valid string!"
else
  IO.inspect "Invalid string!"
end

if "a string" do
  IO.inspect "Truthy"
end


unless is_integer("a string") do
  IO.inspect "Not and Int"
end
