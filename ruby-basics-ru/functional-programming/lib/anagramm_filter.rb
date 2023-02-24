# frozen_string_literal: true

# BEGIN
def anagramm_filter(word, words)
  sort_word = word.split('').sort
  words.filter do |iter|
    sort_iter = iter.split('').sort
    iter if sort_iter == sort_word
  end
end
# END
