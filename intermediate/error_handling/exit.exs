# spawn_link(fn -> exit("oh no!") end)

x = try do
  exit("oh no!")
catch
  :exit, _ -> "exit blocked"
end

IO.puts(x)
