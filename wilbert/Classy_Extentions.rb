=begin
Description:

Classy Extensions
Classy Extensions, this kata is mainly aimed at the new JS ES6 Update introducing class extends You will be preloaded with the Animal class, so you should only edit the Cat class.

Task
Your task is to complete the Cat class which Extends Animal and replace the speak method to return the cats name + meows. e.g.
'Mr Whiskers meows.'

The name attribute is passed with this.name (JS), @name (Ruby) or self.name (Python).

=end

class Cat < Animal
  def speak()
    return "#{@name} meows."
  end
end

=begin
	
Test Cases:

Test.describe('Fixed Tests') do
cat = Cat.new('Mr Whiskers')
Test.assert_equals(cat.speak(),'Mr Whiskers meows.')
cat = Cat.new('Lamp')
Test.assert_equals(cat.speak(),'Lamp meows.')
cat = Cat.new('$$Money Bags$$')
Test.assert_equals(cat.speak(),'$$Money Bags$$ meows.')
end

Test.describe('Random Tests') do
def randint(a,b) rand(b-a+1)+a end
names = ['Mr Whiskers', 'Lamp', '$$Money Bags$$', 'meowmeow',
'mirou','milo','spots','dog','llama','code','wars',
'stripes','dug','barf', "Jury", "Luk", "Bea", "Felix"]

40.times do
    name = names[randint(0,names.length-1)]
    cat = Cat.new(name)
    Test.it("Testing for #{name}") do
    Test.assert_equals(cat.speak(),name+" meows.")
    end
end
end

Test.describe('Animal Test') do
animal = Animal.new('noise')
Test.assert_equals(animal.speak(), 'noise makes a noise.')
end
	
end