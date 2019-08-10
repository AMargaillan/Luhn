module Luhn
  def self.is_valid?(number)
    num1 = number.to_s.reverse
    num2 = num1.split("").map { |x| x.to_i }
    num2.length.times do |n|
      if num2[n].odd?
        num2[n] *= 2
        if num2[n] > 9
          num2[n] -= 9
        end
      end
    end
    x_sum = num2.inject(0){|sum,i| sum + i }
    if x_sum % 10 == 0
      puts true
    else
      puts false
    end
  end
end

Luhn.is_valid?(4194560385008504)
