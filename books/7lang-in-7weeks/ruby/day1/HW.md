## Find:

- The Ruby API
  - https://rubyapi.org/
- Programming Ruby: The Pragmatic Programmer's Guide
  - https://ruby-doc.com/docs/ProgrammingRuby/
- A method that substitutes part of a string
  - String.sub()

```
irb(main):001:0> s = 'hello'
=> "hello"
irb(main):002:0> s.sub(/hel/, 'ha')
=> "halo"
irb(main):003:0> s
=> "hello"
irb(main):004:0>
```

- Info about Ruby's regular expressions
  - /hel/ is a regular expressions (regexp)!

```ruby
/hay/.match('haystack')    #=> #<MatchData "hay">
place = "東京都"
/#{place}/.match("Go to 東京都")
    #=> #<MatchData "東京都">

# =~ is Ruby’s basic pattern-matching operator. When one operand is a regular expression
# and the other is a string then the regular expression is used as a pattern to match
# against the string. (This operator is equivalently defined by Regexp and String so the
# order of String and Regexp do not matter. Other classes may have different
# implementations of =~.) If a match is found, the operator returns index of first match
# in string, otherwise it returns nil.
/hay/ =~ 'haystack'   #=> 0
'haystack' =~ /hay/   #=> 0
/a/   =~ 'haystack'   #=> 1
/u/   =~ 'haystack'   #=> nil
```

- Info about Ruby's ranges
  - similar to rust

```ruby
# Ranges that use '..' to include the given end value.
(1..4).to_a      # => [1, 2, 3, 4]
('a'..'d').to_a  # => ["a", "b", "c", "d"]
# Ranges that use '...' to exclude the given end value.
(1...4).to_a     # => [1, 2, 3]
('a'...'d').to_a # => ["a", "b", "c"]

# Ranges that by default include the given end value.
Range.new(1, 4).to_a     # => [1, 2, 3, 4]
Range.new('a', 'd').to_a # => ["a", "b", "c", "d"]
# Ranges that use third argument +exclude_end+ to exclude the given end value.
Range.new(1, 4, true).to_a     # => [1, 2, 3]
Range.new('a', 'd', true).to_a # => ["a", "b", "c"]
```

## Do:

- Print the str "Hello, world."
  - puts 'Hello, world.'
- For the str "Hello, Ruby." find the index of the world "Ruby."
  - /Ruby./ =~ 'Hello, Ruby.' # => 7
- Print your name 10 times

```ruby
for _ in 1..10
    puts 'xiaoshihou514'
end
```

- Print "This is number 1" with the number from 1 to 10

```ruby
for i in 1..10
    puts "This is number #{i}"
end
```

- Run a Ruby program from a file
  - ruby guessing_game.rb
- Build a guessing game
  - ./guessing_game.rb
