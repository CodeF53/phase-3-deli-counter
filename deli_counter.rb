# Write your code here.
def line(katz_deli)
   if katz_deli.length>0
    puts "The line is currently: #{katz_deli.map.with_index {|name, index| "#{index+1}. #{name}"}.join(" ")}"
   elsif
    puts "The line is currently empty."
   end
end

def take_a_number(katz_deli, name)
    katz_deli << name
    puts "Welcome, #{name}. You are number #{katz_deli.length} in line."
end

def now_serving(katz_deli)
    if katz_deli.length>0
        puts "Currently serving #{katz_deli[0]}."
        katz_deli.shift(1)
    else
        puts "There is nobody waiting to be served!"
    end
end

katz_deli = []

take_a_number(katz_deli, "Ada") #=> Welcome, Ada. You are number 1 in line.
take_a_number(katz_deli, "Grace") #=> Welcome, Grace. You are number 2 in line.
take_a_number(katz_deli, "Kent") #=> Welcome, Kent. You are number 3 in line.

line(katz_deli) #=> "The line is currently: 1. Ada 2. Grace 3. Kent"

now_serving(katz_deli) #=> "Currently serving Ada."

line(katz_deli) #=> "The line is currently: 1. Grace 2. Kent"

take_a_number(katz_deli, "Matz") #=> Welcome, Matz. You are number 3 in line.

line(katz_deli) #=> "The line is currently: 1. Grace 2. Kent 3. Matz"

now_serving(katz_deli) #=> "Currently serving Grace."

line(katz_deli) #=> "The line is currently: 1. Kent 2. Matz"
