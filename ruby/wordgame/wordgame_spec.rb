

require_relative 'wordgame'

describe Wordgame do
	let(:guess_the_word) {Wordgame.new("Gorgonzola") }

	it "returns a string of spaces the length of the secret word and the letter if correct" do
 		expect(guess_the_word.word_guesses("a", "Gorgonzola")).to eq ("---------A")
 	end
	
	it "returns false until conditions have been met" do
		expect(guess_the_word.word_guesses("a", "Gorgonzola")).to eq ("---------A")
		expect(guess_the_word.win).to eq (false)
	end

	it "returns false until conditions have been met" do
		expect(guess_the_word.lose).to eq (false)
	end

	it "returns true if multiple guesses have ben made of the same value" do
		expect(guess_the_word.double_guess("a")).to eq (false)
	end

	it "returns one less than the length of the word if the guess is a letter of the secret word" do
		expect(guess_the_word.word_guesses("a", "Gorgonzola")).to eq ("---------A")
		expect(guess_the_word.guessed_right).to eq (9)
	end

	it "returns one less than the length of the word if the guess is not a letter of the secret word" do
		expect(guess_the_word.word_guesses("x", "Gorgonzola")).to eq ("----------")
		expect(guess_the_word.guessed_wrong).to eq (9)
	end

end