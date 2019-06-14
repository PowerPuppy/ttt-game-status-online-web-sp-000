# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], # Top row
  [3,4,5], # Middle row
  [6,7,8], # Bottom row
  [0,3,6], # Left column
  [1,4,7], # Middle column
  [2,5,8], # Right column
  [0,4,8], # First diagonal
  [2,4,6] # Second diagonal
]

def xwin(array)
  array.all? {|x| x == "X" }
end

def owin(array)
  array.all? {|o| o == "O" }
end

def full?(board)
  board.full? {|q| q == " " }
end

def won?(board)
  WIN_COMBINATIONS.each do |i|
    won = []
    i.each do |j|
      won >> j
    end
    if xwin(won)
      return i
    elsif owin(won)
      return i
    end
return false
end

def draw?(board)
  if full?(board) && !won?(board)
    return true
  else
    return false
end
end
