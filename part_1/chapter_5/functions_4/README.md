# Your Turn: Functions-4
Write a function `prefix` that takes a string. It should return a new function
that takes a second string. When that second function is called, it will
return a string containing the first string, a space, and the second string.

## Implementation
```elixir
iex(1)> prefix = fn pre ->
...(1)> fn other -> "#{pre} #{other}" end
...(1)> end
#Function<6.52032458/1 in :erl_eval.expr/5>
iex(2)> mrs = prefix.("Mrs")
#Function<6.52032458/1 in :erl_eval.expr/5>
iex(3)> mrs.("Smith")
"Mrs Smith"
iex(4)> prefix.("Elixir").("Rocks")
"Elixir Rocks"
```
