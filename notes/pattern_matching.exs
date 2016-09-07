
#  -> Elixir calls '=' the 'match operator'.
#  -> Variables bind once (per match)
#  -> An underscore '_' can be used as a wildcard in matching
#  -> A Caret '^' is called a 'pin operator' and will use a variables existing
#     value from previous match.


## Which of the following will match?
[a, b, a] = [1, 2, 3]
[a, b, a] = [1, 1, 2]
[a, b, a] = [1, 2, 1] # This will match

## Which will match?
a = 2

[a, b, a] = [1, 2, 3]
[a, b, a] = [1, 1, 2]
a = 1                     # This will match
^a = 2
^a = 1                    # This will match
^a = 2 - a                # This will match
