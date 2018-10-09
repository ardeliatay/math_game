class Question

  attr_accessor :is_correct 
  
  def generate_question()
    
    num = 1...20
    @a = num.to_a.sample
    @b = num.to_a.sample
    @is_correct = @a + @b
    puts "What is #{@a} + #{@b}?"
  
  end

end