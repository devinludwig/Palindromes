class String
  define_method(:check) do
    palindrome = true
    alphabet = ['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z']
    letters = downcase().split('')
    letters.each() do |letter|
      if (alphabet.include?(letter).== false).|(letter.== " ")
        letters.delete(letter)
      end
    end
    iterations = 0..letters.length/2.floor()
    iterations.each() do |iteration|
      if !(letters[iteration].== letters[-(1 + iteration)])
        palindrome = false
      end
    end
    palindrome
  end
end
