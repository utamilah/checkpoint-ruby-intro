# collections

# 1. Create a variable `point1` and assign it a hash representing a coordinate with keys `:x` and `:y` which have integer values
point1 = {
  x: 12,
  y: 24
}

# 2. Print the y value
puts point1[:y]

# 3. Make an array, `points`, that includes `point1` and two more points (`points.length` should be 3)
point2 = {
  x: 26,
  y: 72
}
point3 = {
  x: 13,
  y: 20
}

points = [point1, point2, point3]
puts points.length

# 4. Use `.each` to print the y value of each point
points.each{|point| puts point}

# 5. Use `.each_with_index` and string interpolation to print for each point "The point at index <index> has coordinates {x: <x-val>, y: <y-val>}"
points.each_with_index{|point,i| puts "The point at index #{i} has coordinates #{point[:x]},#{point[:y]}"}

# 6. Create an array and call it `distances_from_origin` by mapping over the points with the `.map` method and returning the distance between the point and origin, (0,0).
# Distance from origin can be found with the equation `distance_from_origin = Math.sqrt(x_val ** 2 + y_val ** 2)`
distance_from_origin = []

points.map {|point|
  distance = Math.sqrt(point[:x] ** 2 + point[:y] ** 2)
  distance_from_origin.push(distance)
}

puts distance_from_origin
