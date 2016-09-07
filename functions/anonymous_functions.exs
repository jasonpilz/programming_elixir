# anonymous functions get called with a period, versus named functions that do not:
sum = fn (a, b) -> a + b end
iex> sum.(1, 2)


# if the function has no arguments, still need parens to call it:
greet = fn -> IO.puts "Hello" end
iex> greet.()


# parens can be ommitted in a function definition:
f1 = fn a, b -> a * b end
iex> f1.(4, 5)

f2 = fn -> 99 end
iex> f2.()