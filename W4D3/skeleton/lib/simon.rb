class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1
    @game_over = false
    @seq = []
  end

  def play
    until @game_over
      take_turn
      system("clear")
    end
    game_over_message
    reset_game
  end

  def take_turn
    show_sequence
    require_sequence
    unless @game_over
      round_success_message
      @sequence_length += 1
    end
  end

  def show_sequence
    add_random_color
    @seq.each do |color|
      puts color
      sleep(1)
      system("clear")
      sleep(0.3)
    end
  end

  def require_sequence
    puts "repeat the sequence, only enter the first letter of each color on a new line"
    @seq.each do |color|
      user_input = gets.chomp
      if color[0] != user_input
        @game_over = true 
        break
      end
    end
    sleep(0.3)
  end

  def add_random_color
    @seq << COLORS.sample
  end

  def round_success_message
    puts "Round succesful, next round!"
  end

  def game_over_message
    puts "Game over!"
  end

  def reset_game
    @sequence_length = 1
    @game_over = false 
    @seq = []
  end
end
