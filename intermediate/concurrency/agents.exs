{:ok, agent} = Agent.start_link(fn -> "initial value" end)

Agent.update(agent, fn state -> "#{state}, updated value." end)
IO.inspect(Agent.get(agent, &(&1)))

Agent.start_link(fn -> 0 end, name: :counter)
for x <- 1..10 do
  Agent.update(:counter, &(&1 + x))
end

IO.inspect(Agent.get(:counter, &(&1)))
