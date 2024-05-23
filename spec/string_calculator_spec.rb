require 'rspec'
require_relative 'string_calculator'

RSpec.describe StringCalculator do
  before(:each) do
    @calculator = StringCalculator.new
  end

  it "returns 0 for an empty string" do
    expect(@calculator.add("")).to eq(0)
  end

  it "returns the number for a single number string" do
    expect(@calculator.add("1")).to eq(1)
  end

  it "returns the sum for two numbers comma delimited" do
    expect(@calculator.add("1,2")).to eq(3)
  end

  it "returns the sum for multiple numbers comma delimited" do
    expect(@calculator.add("1,2,3")).to eq(6)
  end

  it "returns the sum for numbers delimited by new lines and commas" do
    expect(@calculator.add("1\n2,3")).to eq(6)
  end
end
