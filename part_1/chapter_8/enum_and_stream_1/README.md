# Your Turn: EnumAndStream-1

Implement the following `Enum` function using no library functions or list
comprehensions: `all?`, `each`, `filter`, `split`, `take`. You may need to use
an `if` statement to implement `filter`. The syntax for this is:

```elixir
if condition do
  expressions(s)
else
  expression(s)
end
```

## My Implementation

```elixir
defmodule Enum do
  def all?(col, func)                  do: _all?(col, func, true)
  defp _all?([], _func, res)           do: res
  defp _all?([head | tail], func, res) do: _all?(tail, func, res && func.(head))


  def each([], _func),             do: []
  def each([ head | tail ], func), do: [ func.(head) | each(tail, func) ]
end
```
