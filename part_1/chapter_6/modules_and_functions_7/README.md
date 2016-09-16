# Your Turn: ModulesAndFunctions-7

Find the library functions to do the following, and then use each in iex.
(If the *Elixir* or *Erlang* appears at the end of the challenge, then you'll
find the answer in that set of libraries.)

1. Convert a float to a string with two decimal digits. (Erlang)
2. Get the value of an operating-system environment variable. (Elixir)
3. Return the extension component of a file name (so return `.exs` if given
   "dave/test.exs"). (Elixir)
4. Return the process's current working directory. (Elixir)
5. Convert a string containing JSON into Elixir data structures. (Just find; don't install.)
6. Execute a command in your operating systems's shell.

Sources:

* http://elixir-lang.org/docs/
* http://erlang.org/doc/
* http://elixir-lang.org/crash-course.html

## Implementation

```elixir
iex(1)> :io_lib.

iex(2)> System.get_env("RUBY_VERSION")
"ruby-2.3.1"

iex(3)> Path.extname("dave/test.exs")
".exs"

iex(4)> File.cwd!
"/Users/Jason/code/elixir/book_programming_elixir_1.2/examples"

iex(5)> [Poison](https://github.com/devinus/poison)

iex(6)> System.cmd("ls", [])
{"README.md\nexamples\nnotes\npart_1\n", 0}
```
