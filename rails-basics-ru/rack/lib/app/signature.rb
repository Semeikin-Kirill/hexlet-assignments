# frozen_string_literal: true

require 'digest'

class Signature
  def initialize(app)
    @app = app
  end

  def call(env)
    # BEGIN
    status, headers, body = @app.call env
    sha = Digest::SHA2.hexdigest body[0]
    new_body = body.concat([sha])
    [status, headers, new_body]
    # END
  end
end
