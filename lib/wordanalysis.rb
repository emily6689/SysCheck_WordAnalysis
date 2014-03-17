require 'pry'

class WordAnalysis
  attr_reader :string

  def initialize(string)
    @string = string
  end

  def count_string
    @string.size
  end





  def array_me_by_word
    the_array = @string.downcase.split
    the_array.map {|word| word.gsub(/\W/, "")}
    #gets rid of any symbols
  end

  def array_me_by_char
    the_array = @string.gsub(" ", "")
    the_array.downcase.split(//)
    #gets rid of white_spaces
  end

  def array_me_by_letter
    self.array_me_by_char.join.gsub(/\W/, "").split(//)
  end

  def array_me_by_symbol
    self.array_me_by_char.join.gsub(/\w/, "").split(//)
  end





  def create_count_hash(array)
    hash = Hash.new(0)
    array.each do |element|
      hash[element] += 1
    end
    hash
  end

  def create_popularity_hash(array)
    the_hash            = create_count_hash(array)
    top_three_elements  = Hash[the_hash.sort_by {|word, count| -count}[0..2]]
  end

  def create_count_statement(hash)
    count_statement = ""
    hash.each do |element, count|
      if count == 1
        count_statement << "'#{element}' appears #{count} time\n"
      else
        count_statement << "'#{element}' appears #{count} times\n"
      end
    end
    count_statement
  end






  #is this too deeply nested of a method argument????
  def word_count
    create_count_statement(create_count_hash(array_me_by_word))
  end

  def letter_count
    create_count_statement(create_count_hash(array_me_by_letter))
  end

  def symbol_count
    create_count_statement(create_count_hash(array_me_by_symbol))
  end




  def rank_word_popularity
    top_three_words      = create_popularity_hash(array_me_by_word)
    popularity_statement = "Here is a list of the most common words:\n"+create_count_statement(top_three_words)
  end

  def rank_letter_popularity
    top_three_letters    = create_popularity_hash(array_me_by_letter)
    popularity_statement = "Here is a list of the most common letters:\n"+create_count_statement(top_three_letters)
  end
end

my_string = WordAnalysis.new("why hello there, me!")
test_string = WordAnalysis.new("$t Patty's day suck$ and my neighbors are HELLA ANNOYING! I hope they stop doing keg stands soon. hella hella whaa? St Patty's. I'm Irish.")
test = WordAnalysis.new("Buffalo buffalo buffalo the chicken chicken.")

puts test.rank_letter_popularity








