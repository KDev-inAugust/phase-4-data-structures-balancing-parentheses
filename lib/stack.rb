class Stack

  def initialize
    @stack = []
  end

  def push(value)
    @stack.push(value)
  end

  def pop
    @stack.pop
  end

  def peek
    @stack.last
  end

  def size
    @stack.length
  end

end

def balancing_parentheses(string)
    @stack=Stack.new
    @openP=0
    @closedP=0
    for i in 0..string.size
      if string[i]=="("
        @stack.push(string[i])
        @openP+=1
      elsif string[i]==")"
        @stack.push(string[i])
        @closedP+=1
      end
    end
    if @openP > @closedP
      math = @openP-@closedP
      math
    elsif @closedP > @openP
      math = @closedP-@openP
      math
    elsif @openP==@closedP
    math = 0
    math
    end
end

# balancing_parentheses("(")
# balancing_parentheses(')))')


