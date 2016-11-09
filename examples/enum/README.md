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
```

