require_relative '../lib/multiples'

describe "the is_multiple_of_3_or_5? method" do
  it "should return TRUE when an integer is a multiple of 3 or 5" do
    expect(is_multiple_of_3_or_5?(3)).to eq(true)
    expect(is_multiple_of_3_or_5?(5)).to eq(true)
    expect(is_multiple_of_3_or_5?(51)).to eq(true)
    expect(is_multiple_of_3_or_5?(45)).to eq(true)
  end

  it "should return FALSE when an integer is NOT a multiple of 3 or 5" do
    expect(is_multiple_of_3_or_5?(11)).to eq(false)
    expect(is_multiple_of_3_or_5?(16)).to eq(false)
    expect(is_multiple_of_3_or_5?(37)).to eq(false)
    expect(is_multiple_of_3_or_5?(74)).to eq(false)
  end
end
describe "the sum_of_3_or_5_multiples? method" do 
  it "should return the sum of the inputted integer" do
    expect(sum_of_3_or_5_multiples(11)).to eq(33)  
  end
  it "should return TG when not a integer" do 
    expect(sum_of_3_or_5_multiples(-24)).to eq("Yo ! Je ne prends que les entiers naturels. TG.")
  end
end 