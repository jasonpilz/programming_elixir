# Elixir Basics

## Built-in Types

##### Values Types
Integers
```
  1234, 1_000_000
```
Floating-point numbers
```
  1.0, 0.2345
```
Atoms (symbols)
```
  :jason, :is_binary?, :<>
```
Ranges
```
  start..end
```
Regular Expressions (Use the `Regex` module)
```
  ~r{regexp}opts
```

#### System Types
  * PIDs and Ports
  * References

#### Collection Types
  ###### *Tuples*
    - Ordered collection of Values
    ex: { :ok, 42, "next" }
    ex: iex> { :ok, file } = File.open("Rakefile")

  ###### *Lists (Linked list)*
    - Contain a head and a tail (is itself a list)
    ex: [ 1, 2, 3]

  ###### *Maps (hashes)*
    - Collection of key/value pairs
    ex: %{ key => value, key => value}

  ###### *Binaries*

#### Other
  * Functions

<hr>
