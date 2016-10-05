def how_much_coffee(events)
  coffee = 0
  events = events.select{ |x|
    "CAT" == x.upcase || "DOG" == x.upcase || "CW" == x.upcase || "MOVIE" == x.upcase}
  events.each { |y| (y == y.downcase)? coffee += 1 : coffee += 2}
  coffee > 3? "You need extra sleep" : coffee
end