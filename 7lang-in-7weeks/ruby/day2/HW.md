## Find

- How to access files with and without code blocks and list the benefits of each

```ruby
# Less code
File.write(path, content)
# More control (read-only files, etc)
File.open(path, 'w'){|f| f.write(content)}
```

- How to translate a hash to an array? Can you translate arrays to hashes?

```ruby
# Hash to arr
h = {foo: 0, bar: 1, baz: 2}
h.to_a # => [[:foo, 0], [:bar, 1], [:baz, 2]]
# Array to hash
[].to_h # => {}
a = [['foo', 'zero'], ['bar', 'one'], ['baz', 'two']]
h = a.to_h
h # => {"foo"=>"zero", "bar"=>"one", "baz"=>"two"}
# ...Or with closures
a = ['foo', :bar, 1, [2, 3], {baz: 4}]
h = a.to_h {|item| [item, item] }
h # => {"foo"=>"foo", :bar=>:bar, 1=>1, [2, 3]=>[2, 3], {:baz=>4}=>{:baz=>4}}

```

- Can you iterate through a hash?

```ruby
h = { :ident => 'item', 'ident' => 'another_item', 114514 => '114514'}
# Traverse like an array
for thing in h
    puts thing
end
# ident
# item
# ident
# another_item
# 114514
# 114514
for ident,item in h
    puts "#{ident} => #{item}"
end
# ident => item
# ident => another_item
# 114514 => 114514
```

- You can use Ruby arrays as stacks. What else could you emulate using an array?

```ruby
# A Quene?
a = [1,2,3]
a.push(4)
# [1,2,3,4]
a = a.drop(1)
# [2,3,4]
```

## Do

- Print the contents of an array of 16 numbers, four numbers at a time only using `each`

```ruby
a = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16]
a.each_index() { |n|
  print a[n]
  if (n+1)%4
    print "\n"
  else
    print ' '
  end
}

```

- Do the same with `each_slice` in `Enumerable`

```ruby
a = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16]
a.each_slice(4) {|s| print s, "\n"}
# [1, 2, 3, 4]
# [5, 6, 7, 8]
# [9, 10, 11, 12]
# [13, 14, 15, 16]
```

- Define a tree data structure that could be specified as follows

```ruby
{
    'grandpa' => {
        'dad' => {'child 1' => {}, 'child 2' => {}},
        'uncle' => {'child 3' => {}, 'child 4' => {}}
    }
}
# Code found in tree.rb
```

- Write a simple grep (You will need a simple regular expression match and read lines
  from a file). Include the line numbers :P
  - Done in grep.rb, ruby grep.rb (-i) KEYWORD FILE
