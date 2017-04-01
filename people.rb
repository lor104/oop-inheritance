class People

  def initialize(name)
    @name = name
  end

  def greeting
    puts "Hi, my name is #{@name}"
  end

end

class Student < People

  def learn
    puts "I get it!"
  end

end

class Instructor < People

  def teach
    puts "Everything in Ruby is an object"
  end

end

Chris = Instructor.new("Chris")
Christina = Student.new("Christina")

Chris.teach
Christina.learn

Chris.greeting
Christina.greeting
# Chris.learn #will create an error since Instrucr doesnt inherit behaviour from the Student class
# Christina.teach #will create an error since Student doesnt inherit behaviour from the Instructor class
