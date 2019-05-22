class ArrayWordFinder
  def initialize(letters, word)
    raise ArgumentError unless letters.is_a?(Array)
    raise ArgumentError unless word.is_a?(String)

    @letters = letters
    @word = word
  end

  def word_in_array?
    @word.split('').all? { |letter| @letters.include?(letter) }
  end

  def word_strictly_in_array?
    return false unless word_in_array?

    @letters.join.include?(@word)
  end
end
