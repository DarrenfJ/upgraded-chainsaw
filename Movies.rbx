movies = {
  'Star Wars' => 8,
  'Brazil' => 10
  
  }
puts "What would you like to do with the MOvies dB? Add? Update? Display? Delete?"
choice = gets.chomp
case choice
  when "add"
    puts "Movie title?"
		title = gets.chomp
  	if movies[title.to_sym] == nil
      puts "Rate this movie Movie"
			rating = gets.chomp
  		movies[title.to_sym] = rating.to_i
  		puts "#{title} has been added with a rating of #{rating}."
      else
      puts "movie already in your list"
    end
  when "update"
     puts "Movie title?"
		title = gets.chomp
  	if movies[title] == nil
      puts "this Movie doens't exist and cant be updated"
      else
      puts "Re-rate this movie Movie"
      rating = gets.chomp
  		movies[title.to_sym] = rating.to_i
  		puts "#{title} has been added with a rating of #{rating}."
    end
  when "display"
   movies.each { |movie, rating| puts "#{movie}: #{rating}"} 
  when "delete"
  puts "Movie title?"
		title = gets.chomp
    if movies[title] == nil
      puts "this Movie doens't exist and cant be deleted"
      else
     movies.delete(title)
      puts "#{title} has been deleted."
       movies.each { |movie, rating| puts "#{movie}: #{rating}"} 
    end
  else
    puts "Error!"
end
