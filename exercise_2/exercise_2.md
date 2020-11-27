### Exercise 2
#### Use a diagram to group the methods in this example:

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

A diagram would look like

add
subtract

print_answer

So to summise add and subtract fuctions would both feed into (pass their result) to the print_answer method.