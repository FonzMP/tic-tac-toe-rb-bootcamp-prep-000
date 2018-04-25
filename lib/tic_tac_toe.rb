# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], # Top row
  [3,4,5], # Middle row
  [6,7,8], # Bottom row
  [0,3,6], # Left Column
  [1,4,7], # Middle Column
  [2,5,8], # Right column
  [0,4,8], # Diagonal 1
  [2,4,6]  # Diagonal 2
]

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  user_to_int = user_input.to_i
  user_index = user_to_int - 1
end

def move(board, index, var)
  board[index] = var.to_s
end

def position_taken?(board, index)
  if board[index] == " " || board[index] == ""
    return false
  elsif board[index] == nil
    return false
  else
    return true
  end
end

def valid_move?(board, index)
  if index.between?(0, 8)
    if board[index] == " " || board[index] == "" || board[index] == nil
      return true
    else
      return false
    end
  else
    return false
  end
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.to_i
  user_index = input_to_index(user_input)
  if user_index.between?(0, 8)
    if valid_move?(board, user_index)
      board[user_index] = "X"
      display_board(board)
    else
      puts "Sorry, that spot is taken!"
      turn(board)
    end
  else
    puts "That is not a valid choice. Please try again:"
    turn(board)
  end
end

def turn_count(board)
  board.each do |letter|
    if letter == "X" || letter == "O"
      count += 1
    else
      count += 0
    end
end
