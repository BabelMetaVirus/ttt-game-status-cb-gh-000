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

# won?: check to see for a winning combinations
# => board - current board states
# <=  win - a combination of winning indices
# <= nil - if the board does not contain a winning combination
def won?(board)
  # select the indices containing X
  x_indices = (0..board.size-1).select{|i| board[i] == 'X'}
  WIN_COMBINATIONS.each do |win|
    if win.to_set.subset?(x_indices.to_set)
      return win
    end
  end

  return nil
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
