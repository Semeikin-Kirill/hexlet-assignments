# frozen_string_literal: true

# BEGIN
def fizz_buzz(start, finish)
  if start > finish
    return nil
  end
  result = []
  start.upto finish do |num|
    if (num % 3).zero? && (num % 5).zero?
      result << 'FizzBuzz'
    elsif (num % 3).zero?
      result << 'Fizz'
    elsif (num % 5).zero?
      result << 'Buzz'
    else
      result << num
    end
  end
  result.join ' '
end
# END
