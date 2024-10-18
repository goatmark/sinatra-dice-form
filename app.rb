require "sinatra"
require "sinatra/reloader"

get("/") do
  
  erb(:homepage)
end

get("/process_roll") do

  @number_of_die = params.fetch("dice").to_i
  @number_of_sides = params.fetch("sides").to_i

  @rolls = Array.new

  @number_of_die.times do
    roll = rand(1..@number_of_sides)
    @rolls.push(roll)
  end

  erb(:results)
end
