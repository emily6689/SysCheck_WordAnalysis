require 'rspec'
require 'pry'
require_relative 'wordanalysis'

describe WordAnalysis do
  let(:string1) {WordAnalysis.new("OmG why did I $ave this for 6:00pm on Sunday!?")}
  let(:string2) {WordAnalysis.new("$t Patty's day suck$ and my neighbors are HELLA ANNOYING! I hope they stop doing keg stands soon. hella hella whaa? St Patty's. I'm Irish.")}
  let(:string3) {WordAnalysis.new("Buffalo buffalo buffalo the chicken chicken.")}

#God please grant me the serenity to one day write my tests before my code. Amen.

  it "recognizes my beautiful strings" do
    expect(string1.count_string).to eq(46)
    expect(string2.count_string).to eq(138)
  end

  it "can turn my string into an array" do
    expect(string1.array_me_by_word.class).to eq(Array)
    expect(string2.array_me_by_letter.class).to eq(Array)
  end

  it "can count how many times a word appears" do
    expect(string3.word_count).to eq("'buffalo' appears 3 times\n'the' appears 1 time\n'chicken' appears 2 times\n")
  end

  #Not gonna lie....I have no idea what this is. #katas #mini_golf_test.rb #stolenCode #wtf??
  it "outputs how many of each letter appears in my string" do

     expected_output = <<-eos
          b appears 3 times
          u appears 3 times
          f appears 6 times
          a appears 3 times
          l appears 3 times
          o appears 3 times
          t appears 1 time
          h appears 3 times
          e appears 3 times
          c appears 4 times
          i appears 2 times
          k appears 2 times
          n appears 2 times

          eos
  end


  #I wrote these tests after I wrote my code. #lykewhatever #awfulstudent #donthurtme #sorryimnotsorry
  #jkimactuallysorry #imjustbeinghonest. #thetruthhurts #improcrastinatingbywritingthesehashtags
    it "knows which words appear most in my code" do
      expect(string3.rank_letter_popularity).to eq("Here is a list of the most common letters:\n'f' appears 6 times\n'c' appears 4 times\n'l' appears 3 times\n")
    end


end
#it would be cool if I could test if a hash is in order by value, but I don't know how to do that.
#I feel very limited by what I can and cannot test.
# I can only test output it seems like. and classes. and size, and testing output seems stupid in this case.

#imafailure.


#one day I will commit this with better tests, so that I can find a job.







