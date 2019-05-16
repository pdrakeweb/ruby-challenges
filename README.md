# Ruby Challenges

## How to get started

### Setup

You will need to have Ruby 2.5, RubyGems, Rake and Bundler.

After checking out the library and setting your Ruby environment variables, set up the project:

`gem install bundler`

`bundle install`

### Simple Challenge
Fork this repository, choose an example and modify the class to implement the functionality.  Answers can be checked by running the provided unit tests.

### Advanced Challenge
Identify a bug in the provided unit test and fix it.

### Running Unit Tests
Unit tests may be run using rspec or rake:

`bundle exec rspec spec/array_word_finder_spec.rb`

OR

`rake test`

## ArrayWordFinder
This class provides an object that can determine whether an array of characters contains all of the letters necessary to create a word.

### word_in_array?
Given an array of ['c', 'a', 't'] and the word 'cat', the result would be `true`.  For the word 'bat', the result would be '`false`.

Given an array of ['m', 'o', 'm', 'r'] and the word 'mom', the result would be `true`.  For the word 'moo', the result would be '`true`.

### word_strictly_in_array?
Given an array of ['m', 'o', 'm', 'r'] and the word 'mom', the result would be `true`.  For the word 'moo', the result would be '`false`.
