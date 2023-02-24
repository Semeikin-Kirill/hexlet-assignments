# frozen_string_literal: true

# BEGIN
def compare_versions(ver1, ver2)
  first1, second1 = ver1.split '.'
  first2, second2 = ver2.split '.'
  if first1 == first2
    second1.to_i <=> second2.to_i
  else
    first1.to_i <=> first2.to_i
  end
end
# END
