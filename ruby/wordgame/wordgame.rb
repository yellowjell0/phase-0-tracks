class Wordgame
  attr_reader :chances_left
  
  def initialize(word)
    @word = word.upcase!
    @word_array = word.split('')
    @word_spaces = "-".split('') * @word.length
    @guess_array = []
    @chances_left = @word.length
  end

    def word_guesses(guess)
      @guess = guess.upcase!
      @word.length.times do |i|
        if @word_array[i].include?(@guess.to_s) == true
          @word_spaces[i] = @word_array[i]
        elsif
          @word_spaces
          end
        end
      p @word_spaces.join('')
    end

    def win
      !@word_spaces.include?('-')
    end
    
    def lose
      @chances_left <= 0
    end
    
    def double_guess(guess)
      @guess_array.include?(@guess)
    end
    
    def guessed_right
      if @word_spaces.include?(@guess)
        @chances_left -= 1
      end
    end
    
    def guessed_wrong
      if !@word_spaces.include?(@guess)
        @chances_left -= 1
      end
    end
  
    def store_guesses(guess)
      @guess_array << @guess
    end
end


guess_the_word = Wordgame.new("Gorgonzola")

puts "Guess a letter of the word"


loop do

guess = gets.chomp
guess_the_word.word_guesses(guess)



if guess_the_word.win
  puts "You Win!"
  break
  elsif guess_the_word.lose
  puts "You've run out of chances and are a terrible person. Goodbye!"
  break
  elsif guess_the_word.double_guess(guess)
  puts "You already guessed that one. You have #{guess_the_word.chances_left} chances left."
  elsif guess_the_word.guessed_right
  puts "Good Job! Guess again. You have #{guess_the_word.chances_left} chances left."
  elsif guess_the_word.guessed_wrong
  puts "Nope, try again! You have #{guess_the_word.chances_left} chances left."
  end
  
  guess_the_word.store_guesses(guess)
  
  end
