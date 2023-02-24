# frozen_string_literal: true

# BEGIN
def get_same_parity(arr)
  if arr.any?
    arr[0].even? ? arr.filter(&:even?) : arr.filter(&:odd?)
  else
    arr
  end
end
# END
