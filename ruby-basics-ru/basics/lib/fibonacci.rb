# frozen_string_literal: true

# BEGIN
def fibonacci(num)
  if num.negative?
    nil
  elsif num.zero?
    0
  elsif num == 1
    1
  else
    fibonacci(num - 1) + fibonacci(num - 2)
  end
end
# END
