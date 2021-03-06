def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, position)
position = position.to_i - 1

  if position.between?(0, 8) != true
    false
  elsif position_taken?(board, position) == false
    true
  elsif position_taken?(board, position) == true
    false
  end
end

def position_taken?(board, position)

  if board[position] == " " || board[position] == "" || board[position] == nil
    false
  elsif board[position] == "X" || board[position] == "O"
    true
end
end

def move(board, position, value = "X")
  position = position.to_i - 1
  board[position] = value

end

def turn(board)
  puts "Please enter 1-9:"
  position = gets.strip
  if valid_move?(board, position) == true
    move(board, position)
    display_board(board)
    else
    turn(board)
end
end