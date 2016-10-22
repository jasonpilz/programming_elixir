# Your Turn: ModulesAndFunctions-3

An Elixir single-quoted string is actually a list of individual character codes.
Write a `caesar(list, n)` function that adds `n` to each list element, wrapping
if the addition results in a character greater than `z`.

## Implementation

```elixir
defmodule MyList do
  def caesar([], _n), do: []
  def caesar([ head | tail ], n) when head + n <= ?z do
    [ head + n | caesar(tail, n) ]
  end
  def caesar([ head | tail ], n), do: [ head + n - 26 | caesar(tail, n) ]
end

iex(1)> MyList.caesar('ryvkve', 13)
'elixir'
```
