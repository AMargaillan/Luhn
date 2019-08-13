module Luhn
  def self.is_valid?(number)
    num1 = number.to_s.reverse
    num2 = num1.split("").map { |x| x.to_i }

    num2.length.times do |n|
      if n.odd?
        num2[n] *= 2
        if num2[n] > 9
          num2[n] -= 9
        end
      end
    end

    if num2.inject(:+) % 10 == 0
      return true
    else
      return false
    end
  end
end



