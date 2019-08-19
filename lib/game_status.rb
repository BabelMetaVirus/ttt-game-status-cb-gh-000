# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  # row combinations
  [0,1,2],
  [3,4,5],
  [6,7,8],
  # column combinations
  [0,3,6],
  [1,4,7],
  [2,5,8],
  # diagonal combinations
  [2,4,6],
  [0,4,8]
]
# check_win: check to see if a particular player won tic-tac-toe
# => board - current board state
# => token - symbol of the player to check
# <= win - a winning combination if that player won
# <= nil - if that player did not win
def check_win(board, token)
  indices = (0..board.size-1).select{|i| board[i] == token}
  WIN_COMBINATIONS.each do |win|
    if win.to_set.subset?(indices.to_set)
      return win
    end
  end
  return nil
end

# won: check to see for a winning combinations
# => board - current board states
# <=  win - a combination of winning indices
# <= nil - if the board does not contain a winning combination
def won(board)
  # select the indices containing X
  win_x = check_win(board,"X")
  if(win_x != nil)
    return win_x
  end
  win_o = check_win(board,"O")
  return win_o
end

# full?: Check to see if the board is full
# => board - current board state
# <= true - if the board is full
# <= false - if there are still places to place a move
def full?(board)
    return board.all?{|space| space == 'X' || space == 'O'}
end

# draw?: Check to see if the game is a draw
# => board - current board state
# <= true - if the board is full and contains no winning combinations
# <= false - if the board is not full or contains a winning combination
def draw?(board)

end

# winner?: determine if there is a winner and who that winner is
# => board - current board state
# <= "X" - if X is the winner
# <= "O" - if O is the winner
# <= nil - if there is no winner
def winner?(board)
end
