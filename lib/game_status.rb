WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6]
]

def won?(board)
  # winningCombo = nil
  WIN_COMBINATIONS.each { |combo|
    o_combo = combo.select { |i| board[i] == "O" }
    x_combo = combo.select { |i| board[i] == "X" }
    return o_combo if o_combo.count == 3
    return x_combo if x_combo.count == 3
  }
  return false
end

def full?(board)
  return board.reject { |e| e == " "  }
end