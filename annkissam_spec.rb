require 'rspec'
require_relative 'annkissam'

describe '#word_count' do 
  it 'requires an input of string' do
    expect{word_count.validate_arguments(nil)}.to raise_error(ArgumentError) 
    expect{word_count.validate_arguments("word")}.to raise_error(ArgumentError)
  end

  it 'returns a hash with each word and its word count in string' do 
    string1 = "Hello, world!"
    string2 = "To be, or not to be"
    string3 = 'bleh blah BLEH bleh  - blah! zee za doo rei me!'

    hash1 = {"hello"=>1, "world"=>1}
    hash2 = {"to"=>2, "be"=>2, "or"=>1, "not"=>1}
    hash3 = {"bleh"=>3, "blah"=>2, "zee"=>1, "za"=>1, "doo"=>1, "rei"=>1, "me"=>1}

    expect(word_count(string1)).to eq(hash1)
    expect(word_count(string2)).to eq(hash2)
    expect(word_count(string3)).to eq(hash3)
  end
end
