# Leaning down into some more data structures.

# Lists, Tuples, Keyword Lists & Maps.

## Lists

# Lists are just like arrays where in we can store any data as shown below -
# samplelistone = [123, :ok, "lists", true, 123.456]

# prepending list (fast method): list = ["value" | samplelistone]
# appending list (slow method): samplelistone ++ ["value"]

# List concatenation and substraction - [1,2] ++ [3,4] || [1,2,4,5] -- [2,4]

# accessing head and tail elements from the list - hd["valueone", :ok, 3.123232] => gives us the head element
# tl["valueone", :ok, 3.123232] => gives us the tail of the list

## Tuples

# Tuples are similar to lists but stored very closely in memory. Example - {3.1231, "something something hello honey bunny", :okie}
# Will explore more in pattern matching

## Keyword Lists

# Keyword lists and maps are the associative collections in Elixir.
# Example - [{:ok, "okayy"}, {:hello, "worldd"}]

# 1. These dont have to be unique
# 2. Keys must be atoms.
# 3. Keys are ordered.

## Maps

# Maps are the stores of key-value pairs and these are unordered which are defined with %{} syntax
# Example - map = %{:ok => "hello", "world" => :ok}

# 1. Variables can also be used as keys like -
# key = "Hello"
# %{key => "World"} gives %{"Hello" => "World"}

# 2. There is a special syntax for the map if strictly the keys in the maps are only atoms as
# %{key: "hello"} (works same as %{:ok => "hello"})

# 3. If a duplicate is added, it replaces the map with former value
# Example - map = %{:ok => "hello", :ok => "world"} gives %{ok: "world"}

# 4. There is syntax to access the map keys, for example -
#  map = %{:ok => "hello", :ok => "world"} -- this can be accessed as map.ok gives us "hello"
