X = "X"
O = "O"
$board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
$win = ['XXX','OOO']
$turn_count = 0
$game_turns = []
$message = String.new
$place = String.new
$turn = String.new
def instructions
  puts "Use the format 'play(letter, placement)'"
  puts "where letter is X or O and placement is 1,2,3,4,5,6,7,8 or 9 (See chart below)."
  puts "Example: to put an 'X' in the middle square you would enter 'play(X, 5)'."
  puts "You can put X and O in quotes if you want but you don't have to."
  puts "You can type 'reset' to reset the game at any time."
  puts "-------------"
  puts "| 1 | 2 | 3 |"
  puts "-------------"
  puts "| 4 | 5 | 6 |"
  puts "-------------"
  puts "| 7 | 8 | 9 |"
  puts "-------------"
  return "Have fun!"
end
def play(letter, placement)
  if letter == X || letter == O && [1,2,3,4,5,6,7,8,9].include?(placement) == true
    if $turn_count == 0
      if letter == "X"
        $game_turns = [X, O, X, O, X, O, X, O, X]
      else
        $game_turns = [O, X, O, X, O, X, O, X, O]
      end
      $turn_count += 1
      $board[placement - 1] = letter
      check_for_win
    else
      if valid_play?(letter, placement) == true
        $board[placement - 1] = letter
        check_for_win
      else
        $turn_count -= 1
        puts $message
        display
      end
    end
  else
    puts "Not a valid move. Use X or O for your play."
    puts "Use an integer from 1 to 9 for placement."
    display
  end
end
def check_for_win
  if $win.include?($board[0] + $board[1] + $board[2]) == true
    puts "Game Over - #{$board[0]} wins!"
    display
    reset
  elsif $win.include?($board[3] + $board[4] + $board[5]) == true
    puts "Game Over - #{$board[3]} wins!"
    display
    reset
  elsif $win.include?($board[6] + $board[7] + $board[8]) == true
    puts "Game Over - #{$board[6]} wins!"
    display
    reset
  elsif $win.include?($board[0] + $board[3] + $board[6]) == true
    puts "Game Over - #{$board[0]} wins!"
    display
    reset
  elsif $win.include?($board[1] + $board[4] + $board[7]) == true
    puts "Game Over - #{$board[1]} wins!"
    display
    reset
  elsif $win.include?($board[2] + $board[5] + $board[8]) == true
    puts "Game Over - #{$board[3]} wins!"
    display
    reset
  elsif $win.include?($board[0] + $board[4] + $board[8]) == true
    puts "Game Over - #{$board[0]} wins!"
    display
    reset
  elsif $win.include?($board[6] + $board[4] + $board[2]) == true
    puts "Game Over - #{$board[6]} wins!"
    display
    reset
  elsif $board.include?(" ") == false
    puts "Game Over - No one wins... but no one loses either!"
    display
    reset
  else
    display
  end
end
def display
  puts "-------------"
  puts "| #{$board[0]} | #{$board[1]} | #{$board[2]} |"
  puts "-------------"
  puts "| #{$board[3]} | #{$board[4]} | #{$board[5]} |"
  puts "-------------"
  puts "| #{$board[6]} | #{$board[7]} | #{$board[8]} |"
  puts "-------------"
end
def valid_play?(letter, placement)
  $turn_count += 1
  if $board[placement - 1] == " "
    $place = "good"
  else
    $place = "not good"
  end
  if letter == $game_turns[$turn_count - 1]
      $turn = "good"
  else
      $turn = "not good"
  end
  if $turn == "good" && $place == "good"
    return true
  elsif $turn == "good" && $place == "not good"
    $message = "There's already a letter in that space!"
    return false
  elsif $turn == "not good" && $place == "good"
    $message = "It's not your turn!"
    return false
  else 
    $message = "It's not your turn!"
    return false
  end
end
def reset
  $board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
  $turn_count = 0
  $game_turns = []
  $message = String.new
  $place = String.new
  $turn = String.new
end
