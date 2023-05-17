# by default it will import all functions and macros from the module
import List, only: [last: 1]  # may use :except too

IO.puts(last([1, 2, 3, 4]))
# IO.puts(first([1, 2, 3, 4]))  # error -- import not found

# ---- import macros --------
# defmodule ExampleRequire do
#   require SuperMacros
#   SuperMacros.do_stuff
# end


# ---- import functions --------
defmodule ExampleUse do
  defmacro __using__(opts) do
    greeting = Keyword.get(opts, :greeting, "Hi")
    quote do
      def hello(name), do: "#{unquote(greeting)}, #{name}"
    end
  end
end

defmodule ExampleUseTestHello do
  use ExampleUse
end

defmodule ExampleUseTestHola do
  use ExampleUse, greeting: "Hola"
end

defmodule ExampleUseTestPrivet do
    use ExampleUse, greeting: "Привет"
end

defmodule ExampleUseTestNiHao do
    use ExampleUse, greeting: "你好"
end

IO.puts(ExampleUseTestHello.hello("John"))
IO.puts(ExampleUseTestHola.hello("John"))
IO.puts(ExampleUseTestNiHao.hello("John"))
