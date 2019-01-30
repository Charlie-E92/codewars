# Level - 7 Kyu

#Create a Person class with a greet method that returns the first and last name of the person with a greeting.
#For example if the first name is 'Bob' and the last name is 'Smith' then it should return 'Hello, Bob Smith!'.

class Person
  def initialize(first_name,surname)
    @first_name = first_name
    @surname = surname
  end
  
  def greet
    return "Hello, #{@first_name} #{@surname}!"
  end
end
