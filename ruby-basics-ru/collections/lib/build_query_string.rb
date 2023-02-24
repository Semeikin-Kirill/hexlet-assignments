# frozen_string_literal: true

# rubocop:disable Style/For
# BEGIN
def build_query_string(params)
  result = params.keys.sort.map { |key| "#{key}=#{params[key]}" }
  result.join '&'
end
# END
# rubocop:enable Style/For
