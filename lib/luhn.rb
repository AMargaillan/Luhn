module Luhn
  def self.is_valid?(number)
    num1 = number.to_s.reverse
    num2 = num1.split("").map { |x| x.to_i }

    num3 = num2.each_with_index do |item, index|
      if index.odd?
        item *= 2
        if item > 9
          item -= 9
        end
      end
    end

    if num3.inject(0){ |sum,i| sum + i }  % 10 == 0
      return true
    else
      return false
    end
  end
end
