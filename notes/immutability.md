# Immutability

* In Elixir, all values are immutable
* If you need to adjust the elements in a list, Elixir does it by producing a copy
of the original containing the revised elements. The original remains the same.
* For memory considerations with immutable data, each Elixir process has it's own
heap, so each heap is smaller. -> Garbage collection runs faster.
