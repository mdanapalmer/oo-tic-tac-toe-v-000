require "pry"

class TicTacToe
  def initialize(board = nil)
    @board = board || Array.new(9, " ")
  end
  #assigns an instance variable @board to an array with 9 blank spaces

    WIN_COMBINATIONS = [
      [0, 1, 2],
      [3, 4, 5],
      [6, 7, 8],
      [0, 3, 6],
      [1, 4, 7],
      [2, 5, 8],
      [2, 4, 6],
      [0, 4, 8]
      ]
#defines a constant WIN_COMBINATIONS with arryas for each win combo

    def display_board
      puts "  #{@board[0]} | #{@board[1]} | #{@board[2]} "
      puts " ----------- "
      puts "  #{@board[3]} | #{@board[4]} | #{@board[5]} "
      puts " ----------- "
      puts "  #{@board[6]} | #{@board[7]} | #{@board[8]} "
    end
  #prints out the arrangement of the board

  def input_to_index(user_input)
    user_input.to_i - 1
  end
#converts user input into integer and then into the value of the array

  def move(index, token = "X")
    @board[index] = token
  end
  #This one I will need help with

def position_taken?(index)
  @board[index] != " "
end
#If the board index is not equal to " " then the position is taken

def valid_move?(index)
    !position_taken?(index) && index.between?(0,8)
  end


end
