require 'pry'

class String

  def sentence?
    #binding.pry 
    if self.end_with?(".")
      return true
    else 
      return false 
    end 
  end

  def question?
    if self.end_with?("?")
      return  true
    else 
      return false 
    end 
  end

  def exclamation?
    if self.end_with?("!")
      return true
    else 
      return false
    end 
  end

  def count_sentences
    #binding.pry
    my_array = self.split(" ")
    i = 0
    sentence_count = 0  
    while i < my_array.length do 
      if my_array[i][-1] == "." || my_array[i][-1] == "?" || my_array[i][-1] == "!"
        sentence_count += 1
      end 
      i +=1
    end 
    sentence_count

  end 

end