def print_board(board)
    puts board[1] + '|' + board[2] + '|' + board[3]
    puts '-+-+-'
    puts board[4] + '|' + board[5] + '|' + board[6]
    puts '-+-+-'
    puts board[7] + '|' + board[8] + '|' + board[9]
end

def move(board, player_X)
    # will have to handle non integers also
    print "Choose a position: "
    pos = gets.chomp.to_i
    while board[pos] != ' '
        print "Invalid move. Please choose a different position: "
        pos = gets.chomp.to_i
    end
    board[pos] = player_X ? 'X' : 'O'
end

board = {
    1 => ' ', 2 => ' ', 3 => ' ',
    4 => ' ', 5 => ' ', 6 => ' ',
    7 => ' ', 8 => ' ', 9 => ' ',
}

player_X = true

while true
    print_board(board)
    move(board, player_X)
    player_X = !player_X
end