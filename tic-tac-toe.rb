def print_board(board)
    puts board[1] + '|' + board[2] + '|' + board[3]
    puts '-+-+-'
    puts board[4] + '|' + board[5] + '|' + board[6]
    puts '-+-+-'
    puts board[7] + '|' + board[8] + '|' + board[9]
end

board = {
    1 => ' ', 2 => ' ', 3 => ' ',
    4 => ' ', 5 => ' ', 6 => ' ',
    7 => ' ', 8 => ' ', 9 => ' ',
}

print_board(board)