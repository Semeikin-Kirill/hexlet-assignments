# frozen_string_literal: true

require 'rack'

class Router
  def call(env)
    # BEGIN
    request = Rack::Request.new(env)
    if request.path == '/'
      case request.request_method
      when 'GET'
        [200, {}, ['Hello, World!']]
      end
    elsif request.path == '/about'
      case request.request_method
      when 'GET'
        [200, {}, ['About page']]
      end
    else
      [404, {}, ['404 Not Found']]
    end
    # END
  end
end
