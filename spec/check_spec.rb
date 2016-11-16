require("check")
require("rspec")
require("pry")

describe("String#check") do
  it("returns true if input is a palindrome")
  expect('murder for a jar of red rum'.check).to(eq(true))
  end
end
