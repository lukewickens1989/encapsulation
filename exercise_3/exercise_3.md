### Exercise 3
#### Refactor the methods in the Calculator example into two classes as you see fit.

##### Initial code

class Calculator
  def add(number_1, number_2)
    number_1 + number_2
  end

  def subtract(number_1, number_2)
    number_1 - number_2
  end

  def print_answer(answer)
    "The Answer is: #{ answer }"
  end
end

##### Refactored code

class Calculations

 def add(number_1, number_2)
    number_1 + number_2
  end

  def subtract(number_1, number_2)
    number_1 - number_2
  end

end

class Display

  def print_answer(answer)
    "The Answer is: #{ answer }"
  end

end

To summise: One class will handle to logic and the other class will handle the display