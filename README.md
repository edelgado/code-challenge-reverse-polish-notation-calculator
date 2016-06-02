# Code Challenge - Reverse Polish Notation Calculator

By Enrique Delgado.

## Problem Statement

Please implement a reverse polish notation (RPN) calculator.  It can be written
in any language you choose. It will be evaluated based on its
successful implementation of the algorithm, its style and conformance to best
practices according to the standards of the language, and how easy it is to
understand and modify. This is a small problem, but write code representative
of how you organize things in a larger context.
Feel free to document any design decisions you make for the benefit of your reviewers.

### Specifications

1. The calculator should use standard input and standard output, unless the
   language makes that impossible.

2. It should implement the four standard arithmetic operators.

3. It should support negative and decimal numbers, and should not have
   arbitrary limits on the number of operations.

4. The calculator should not allow invalid or undefined behavior.

5. The calculator should exit when it receives a `q` command or an end of input 
   indicator (EOF).


#### Sample Input/Output

    > 5 
    5
    > 8
    8
    > +
    13

---

    > -3
    -3
    > -2
    -2
    > *
    6
    > 5
    5
    > +
    11

---

    > 2
    2
    > 9
    9
    > 3
    3 
    > +
    12 
    > *
    24

---

    > 20
    20
    > 13
    13
    > -
    7
    > 2
    2
    > / 
    3.5


## Solution

## Instructions

Bundle:

```
bundle
```

Run tests:
```
bundle exec rake --format=documentation
```

Kick the tires by using a CLI version:
```
bundle exec ./bin/calculate
```

## Using as a Gem

Add this line to your application's Gemfile:

```ruby
gem 'rpn_calculator'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rpn_calculator

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
