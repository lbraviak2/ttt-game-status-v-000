# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

WIN_COMBINATIONS = [
  [0,1,2], [3,4,5],[6,7,8],[0,4,8], [2,4,6], [0,3,6], [1,4,7], [2,5,8]
]

def won?(board)
  board.all? { |e| e == " " }

  if board[0] == board[1] && board[0] === board[2]
    true
    WIN_COMBINATIONS[0]
  elsif  board[3] == board[4] && board[3] === board[5]
    true
    WIN_COMBINATIONS[1]
  elsif board[6] == board[7] && board[6] === board[8]
    true
    WIN_COMBINATIONS[2]
  elsif board[0] == board[4] && board[0] === board[8]
    true
    WIN_COMBINATIONS[3]
  elsif board[2] == board[4] && board[2] === board[6]
    true
    WIN_COMBINATIONS[4]
  elsif  board[0] == board[3] && board[0] === board[6]
    true
    WIN_COMBINATIONS[5]
  elsif  board[1] == board[4] && board[1] === board[7]
    true
    WIN_COMBINATIONS[6]
  elsif  board[2] == board[5] && board[2] === board[8]
    true
    WIN_COMBINATIONS[7]
  end
end
# Define your WIN_COMBINATIONS constant
