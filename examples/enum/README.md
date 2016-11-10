# `Enum` module

##### Intro
```elixir
iex> this = fn () -> 'fun' end
```

-> So now lets have some `this.()` ^_^
<hr>

##### Convert any collection to list
```elixir
iex> list = Enum.to_list 1..5
[1, 2, 3, 4, 5]
```

##### Concatenate collections
```elixir
iex> Enum.concat([1, 2, 3], [4, 5, 6])
[1, 2, 3, 4, 5, 6]

iex> Enum.concat([1, 2, 3], 'abc')
[1, 2, 3, 97, 98, 99]
```

##### Modify collections
```elixir
iex> Enum.map(list, &(&1 * 10))
[10, 20, 30, 40, 50]

iex> Enum.map(list, &String.duplicate("*", &1))
["*", "**", "***", "****", "*****"]
```

##### Select elements by position or criteria
```elixir
iex> Enum.at(10..20, 3)
13

iex> Enum.at(10..20, 20)
nil

iex> Enum.at(10..20, 20, :no_one_here)
:no_one_here

iex> Enum.filter(list, &(&1 > 2))
[3, 4, 5]

iex> require Integer # to get access to is_even
nil
iex> Enum.filter(list, &Integer.is_even/1)
[2, 4]

iex> Enum.reject(list, &Integer.is_even/1)
[1, 3, 5]
```

##### Sort and compare elements
```elixir
iex> Enum.sort(["there", "was", "a", "crooked", "man"])
["a", "crooked", "man", "there", "was"]

iex> Enum.sort(["there", "was", "a", "crooked", "man"], &(String.length(&1) <= String.length(&2)))
["a", "was", "man", "there", "crooked"]

iex> Enum.max(["there", "was", "a", "crooked", "man"])
"was"

iex> Enum.max_by(["there", "was", "a", "crooked", "man"], &String.length/1)
"crooked"
```

##### Split a collection
```elixir
iex> Enum.take(list, 3)
[1, 2, 3]

iex> Enum.take_every(list, 2)
[1, 3, 5]

iex> Enum.take_while(list, &(&1 < 4))
[1, 2, 3]

iex> Enum.split(list, 3)
{[1, 2, 3], [4, 5]}

iex> Enum.split_while(list, &(&1 < 4))
{[1, 2, 3], [4, 5]}
```

##### Join a collection
```elixir
iex> Enum.join(list)
"12345"

iex> Enum.join(list, ", ")
"1, 2, 3, 4, 5"
```

##### Predicate operations
```elixir
iex> Enum.all(list, &(&1 < 4))
false

iex> Enum.any?(list, &(&1 < 4))
true

iex> Enum.member?(list, 4)
true

iex> Enum.empty?(list)
false
```

##### Merge collections
```elixir
iex> Enum.zip(list, [:a, :b, :c])
[{1, :a}, {2, :b}, {3, :c}]

iex> Enum.with_index(["once", "upon", "a", "time"])
[{"once", 0}, {"upon", 1}, {"a", 2}, {"time", 4}]
```

##### Fold elements into single value
```elixir
iex> Enum.reduce(1..100, &(&1 + &2))
5050

iex> Enum.reduce(["now", "is", "the", "time"], fn (word, longest) ->
...>        if String.length(word) > String.length(longest) do
...>          word
...>        else
...>          longest
...>        end
...> end) 
"time"
```

