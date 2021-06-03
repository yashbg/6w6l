def print_board(board)
    puts board[1] + '|' + board[2] + '|' + board[3]
    puts '-+-+-'
    puts board[4] + '|' + board[5] + '|' + board[6]
    puts '-+-+-'
    puts board[7] + '|' + board[8] + '|' + board[9]
    puts
end

def move(board, count)
    print "Player #{count % 2 == 0 ? 2 : 1}, please choose a position: "
    pos = gets.chomp.to_i
    puts
    while board[pos] != ' '
        print "Invalid move. Please choose a different position: "
        pos = gets.chomp.to_i
        puts
    end
    board[pos] = count % 2 == 0 ? 'O' : 'X'
    print_board(board)
    check(board, count, pos)
end

def check(board, count, pos)
    if count >= 5
        if (board[1] == board[2] && board[2] == board[3] && board[3] != ' ') || (board[4] == board[5] && board[5] == board[6] && board[6] != ' ') || (board[7] == board[8] && board[8] == board[9] && board[9] != ' ') || (board[1] == board[4] && board[4] == board[7] && board[7] != ' ') || (board[2] == board[5] && board[5] == board[8] && board[8] != ' ') || (board[3] == board[6] && board[6] == board[9] && board[9] != ' ') || (board[1] == board[5] && board[5] == board[9] && board[9] != ' ') || (board[3] == board[5] && board[5] == board[7] && board[7] != ' ')
            puts "Game over. Player #{count % 2 == 0 ? 2 : 1} won!"
            exit(0)
        end
    end
    if count == 9
        puts "Game over. It's a draw!"
        exit(0)
    end
end    

board = {
    1 => ' ', 2 => ' ', 3 => ' ',
    4 => ' ', 5 => ' ', 6 => ' ',
    7 => ' ', 8 => ' ', 9 => ' ',
}

count = 0

print_board(board)

while true
    count += 1
    move(board, count)
end