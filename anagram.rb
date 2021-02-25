class Anagram
  attr_reader :word_a, :word_b

  def initialize(word_a, word_b)
    @word_a = word_a.split("")
    @word_b = word_b.split("")
  end

  def check
    return check_letters(word_a, word_b) if check_lenght

    check_lenght
  end

  private

  def check_lenght
    word_a.size == word_b.size
  end

  def check_letters(word_1, word_2, counter = 0)
    word_1.each do |letter|
      word_2.each_with_index do |letter2, index|
        if letter == letter2
          word_2.delete_at(index)
          counter += 1
          check_letters(word_1, word_2, counter) if word_1.size < counter
        end
      end
    end
    return word_1.size == counter
  end
end
