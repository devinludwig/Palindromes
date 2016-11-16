require("check")
require("rspec")
require("pry")

describe("String#check") do
  # it("removes empty spaces from input") do
  #   expect('murder for a jar of red rum'.check).to(eq('murderforajarofredrum'))
  # end
  # it("removes any non-letter characters from input") do
  #   expect('murder! for a jar of red rum?'.check).to(eq('murderforajarofredrum'))
  # end
  # it("converts all letters to lowercase") do
  #   expect('Murder! For a jar of RED RUM?'.check).to(eq('murderforajarofredrum'))
  # end
  it("returns true if input is a palindrome") do
  expect('Murder! For a jar of RED RUM?'.check).to(eq(true))
  end
end
