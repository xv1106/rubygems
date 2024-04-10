require_relative '../lib/caesar_cypher'


describe "the encrypting method" do 
  it "should return the crypted message" do #should return "b" when string is "a" and crypting key is "1"
    expect(encrypting_method("a", 1)).to eq("b")
    expect(encrypting_method("b", 1)).to eq("c")
    expect(encrypting_method("c", 2)).to eq("e")
    expect(encrypting_method("e", 2)).to eq("g")
  end
  it "should properly render uppercases" do
    expect(encrypting_method("A", 1)).to eq("B")
    expect(encrypting_method("B", 1)).to eq("C")
    expect(encrypting_method("C", 2)).to eq("E")
    expect(encrypting_method("E", 2)).to eq("G")
  end
  it 'should loop back at the beginning when alphabet meets the end' do
    expect expect(encrypting_method("z", 1)).to eq("a")
  end 
  it 'should render space as a space' do
    expect(encrypting_method(" ", 1)).to eq(" ")
    expect(encrypting_method(" ", 3)).to eq(" ")
  end
  it 'should render special characters as they are' do
    expect(encrypting_method("!", 1)).to eq("!")
    expect(encrypting_method("?", 3)).to eq("?")
  end
end
