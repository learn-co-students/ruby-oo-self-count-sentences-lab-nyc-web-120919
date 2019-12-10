require 'pry'

class String

  def sentence?
    if self[self.length - 1] == '.'
      true
    else
      false
    end
  end

  def question?
    if self[self.length - 1] == '?'
      true
    else
      false
    end
  end

  def exclamation?
    if self[self.length - 1] == '!'
      true
    else
      false
    end
  end

  def count_sentences
    self.split(/\?|\.|!/).filter{|x| x != ""}.length
  end
end