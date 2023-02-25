# frozen_string_literal: true

# BEGIN
require 'uri'
require 'forwardable'

class Url
  extend Forwardable
  include Comparable

  attr :uri

  def initialize(uri)
    @uri = URI uri
  end

  def query_params()
    return {} if @uri.query.to_s.empty?()

    URI.decode_www_form(@uri.query).reduce({}) do |acc, param|
      acc[param[0].to_sym] = param[1]
      acc
    end
  end

  def query_param(key, default = nil)
    params = query_params
    params.fetch key, default
  end

  def <=>(other)
    path, params = @uri.to_s.split '?'
    other_path, other_params = other.to_s.split '?'

    return path <=> other_path if path != other_path

    arr_params = URI.decode_www_form(params).sort_by { |param| param[0] }
    arr_other_params = URI.decode_www_form(other_params).sort_by { |param| param[0] }
    arr_params <=> arr_other_params
  end

  def_delegators :@uri, :scheme, :port, :host, :to_s
end
# END
