require 'pry'

class String

  def sentence?
    self.end_with?(".")? true : false
  end

  def question?
    self.end_with?("?")? true : false
  end

  def exclamation?
    self.end_with?("!")? true : false
  end

  def count_sentences
    #x = "This, well, is a sentence. This is too!! And so is this, I think? Woo..."
    self.split(/[.?!]+/).grep(/\S/).count
  end
end