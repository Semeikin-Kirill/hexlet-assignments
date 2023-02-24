# frozen_string_literal: true

# rubocop:disable Style/For

def make_censored(text, stop_words)
  # BEGIN
  pattern = '$#%!'
  result = text.split(' ').map do |word|
    stop_words.include? word ? pattern : word
  end
  result.join ' '
  # END
end

# rubocop:enable Style/For
