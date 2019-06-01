# parse_int
A script that parses a number written in words to its numerical value

An irb example:

```shell
irb(main):001:0> require_relative 'parse_int'
=> true
irb(main):002:0> obj = ParseInt.new
=> #<ParseInt:0x000055d481562650>
irb(main):003:0> obj.parse_int 'one thousand five hundred and fifteen'
one thousand five hundred and fifteen
procesing....
=> 1515
```
