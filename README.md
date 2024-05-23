# StringCalculator TDD Kata

This project is an implementation of the String Calculator kata using Test-Driven Development (TDD) in Ruby.

## Features

- Add method that sums up numbers in a string.
- Supports comma and newline as delimiters.
- Supports custom delimiters.
- Throws exceptions for negative numbers.

## Getting Started

### Prerequisites

- Ruby installed on your system.
- Bundler for managing dependencies.

### Installing

Clone the repository:

```sh
git clone https://github.com/yourusername/string_calculator.git
cd string_calculator
```

Install the necessary gems:

```sh
bundle install
```

Usage:

```sh
require './lib/string_calculator'
calculator = StringCalculator.new
puts calculator.add("1,2,3") # Output: 6
```

Running the Tests

```sh
bundle exec rspec
```

Development
This project follows the TDD methodology. Start by writing a test and then implement the code to make the test pass.
