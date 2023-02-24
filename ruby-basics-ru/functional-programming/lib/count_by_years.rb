# frozen_string_literal: true

# BEGIN
def count_by_years(data)
  data.each_with_object({}) do |person, result|
    year = person[:birthday].split('-')[0]
    result[year] ||= 0
    result[year] += 1 if person[:gender] == 'male'
  end
end
# END
