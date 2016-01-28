def fav_foods
    food_array = []
    3.times do
        puts "Name a favorite food."
        food_array << gets.chomp
        p food_array
        puts "Your favvorite foods are #{food_array.join(", ")}."
    end
    food_array.each do |food|
        puts "I like #{food} too!"
    end
    puts food_array
    puts food_array.sort
end
fav_foods



