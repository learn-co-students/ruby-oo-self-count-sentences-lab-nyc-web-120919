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
    sentences = self.split(". ").join("? ").split("! ").join("? ").split("? ")
    binding.pry
    # sentences.select do |x|
    #   sentences[x] != ""
    # end
    sentences.count
  end
end
