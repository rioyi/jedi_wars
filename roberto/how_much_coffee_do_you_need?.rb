def how_much_coffee(events)
  coffee = 0
  events = events.select{ |x|
    "CAT" == x.upcase || "DOG" == x.upcase || "CW" == x.upcase || "MOVIES" == x.upcase
  }
  events.each do |y|
    (y == y.downcase)? coffee += 1 : coffee += 2
  end
  puts coffee
end