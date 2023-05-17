defmodule Example.User do
  @derive {Inspect, only: [:name]}  #  except: [:roles] -- equivalent
  defstruct name: "John", roles: []
end

defmodule Main do
  def main do
    user1 = %Example.User{}
    user2 = %Example.User{name: "Lakshamana", roles: []}
    user3 = %Example.User{name: "Steve", roles: [:manager]}

    IO.inspect(user1)
    IO.inspect(user2)
    IO.inspect(user3.name)
    IO.inspect(user3.roles)
  end
end

Main.main
