require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    words = self.split
    sum = words.reduce(0) do |memo, word| if (word.sentence? || word.question? || word.exclamation?) 
      then memo += 1 end
      memo
    end
  end
end