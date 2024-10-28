require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:elephant)
end

get("/rock") do
  possible_moves = ["rock", "paper", "scissors"]
  @computer_move = possible_moves.sample
  
  if @computer_move == "rock"
    @result = "We tied!"
  elsif @computer_move == "scissors"
    @result = "We win!"
  else
    @result = "We lose!"
  end

  erb(:rock)
end

get("/paper") do
  possible_moves = ["rock", "paper", "scissors"]
  @computer_move = possible_moves.sample

  if @computer_move == "paper"
    @result = "We tied!"
  elsif @computer_move == "rock"
    @result = "We win!"
  else
    @result = "We lose!"
  end

  erb(:paper)
end

get("/scissors") do
  possible_moves = ["rock", "paper", "scissors"]
  @computer_move = possible_moves.sample

  if @computer_move == "scissors"
    @result = "We tied!"
  elsif @computer_move == "paper"
    @result = "We win!"
  else
    @result = "We lose!"
  end
  
  erb(:scissors)
end 
