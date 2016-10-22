# Your Turn: ModulesAndFunctions-1

Write a `mapsum` function that takes a list and a function. It applies the
function to each element of the list and then sums the result.

## Implementation

```elixir
defmodule MyList do
  def mapsum([], _func),             do: 0
  def mapsum([ head | tail ], func), do: func.(head) + mapsum(tail, func)
end

iex(1)> MyList.mapsum([1, 2, 3], &(&1 * &1))
14
```
