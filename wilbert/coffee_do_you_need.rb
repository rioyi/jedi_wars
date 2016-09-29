=begin
Description:

Everybody know that you passed to much time awake during night time...

Your task here is to define how much coffee you need to stay awake after your night. You will have to complete a function that take an array of events in arguments, according to this list you will return the number of coffee you need to stay awake during day time. Note: If the count exceed 3 please return 'You need extra sleep'.

The list of events can contain the following:

    You come here, to solve some kata ('cw').

    You have a dog or a cat that just decide to wake up too early ('dog' | 'cat').

    You just watch a movie ('movie').

    Other events can be present and it will be represent by arbitrary string, just ignore this one.

Each event can be downcase/lowercase, or uppercase. If it is downcase/lowercase you need 1 coffee by events and if it is uppercase you need 2 coffees.
=end


def how_much_coffee(events)
  coffee = 0
  events.each do |x|
    if (x.downcase == "cw" || x.downcase == "dog" || x.downcase == "cat" || x.downcase == "movie")
      (x == x.downcase)? coffee += 1 : coffee += 2
    end  
  end
  (coffee <= 3)? coffee : "You need extra sleep"
end
#test
array = ['cat=others','dog=others','cat']

puts how_much_coffee(array)





=begin
TEST BASICO

Test.describe('Basic Tests') do
  Test.assert_equals(how_much_coffee([]), 0)
  Test.assert_equals(how_much_coffee(['cw']), 1)
  Test.assert_equals(how_much_coffee(['CW']), 2)
  Test.assert_equals(how_much_coffee(['cw','CAT']), 3)
  Test.assert_equals(how_much_coffee(['cw','CAT','DOG']), 'You need extra sleep')
  Test.assert_equals(how_much_coffee(['cw','CAT', 'cw=others']), 3)
end

--------------------------------------------------------------
	
 def how_much_coffee(events)
  coffee = 0
  events.each do |event|
    next unless event =~ /^(cw|dog|cat|movie)$/i 
    coffee += 1 if event == event.downcase
    coffee += 2 if event == event.upcase
    return "You need extra sleep" if coffee > 3
  end
  coffee
end

-------------------------------------------------
def how_much_coffee(events)
  sleep = 0
  events.each do |e|
    sleep += 1 if e =~ /^(cw|dog|cat|movie)$/
    sleep += 2 if e =~ /^(CW|DOG|CAT|MOVIE)$/
  end
  sleep <= 3 ? sleep : "You need extra sleep"
end

---------------------------------------------------
def how_much_coffee(events)
  count = 0
  events.each do |e|
     f = e.downcase
     if f == "movie" || f == "cw" || f == "dog" || f == "cat"
        count +=1 if e == e.downcase
        count +=2 if e == e.upcase
    end
     puts count
  end
  return "You need extra sleep" if count > 3
  return count
end
-------------------------------------------------------
OJO

def how_much_coffee(events)
  coffee_count = 0
  events.each do |event|
    next unless event =~ /^(cw|dog|cat|movie)$/i
    coffee_count += 1 if event == event.downcase
    coffee_count += 2 if event == event.upcase
    return "You need extra sleep" if coffee_count > 3
  end
  return coffee_count
end




=end