# frozen_string_literal: true

# BEGIN
def reverse(word)
  result = ''
  word.each_char { |char| result = "#{char}#{result}" }
  result
end
# END
