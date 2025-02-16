```elixir
list = [1, 2, 3, 4, 5]

result = Enum.reduce_while(list, :continue, fn x, acc ->
  if x == 3 do
    {:halt, acc}
  else
    IO.puts(x)
    {:cont, acc}
  end
end)

IO.puts("Process finished successfully.")
```