# frozen_string_literal: true

require 'test_helper'
require_relative '../controllers/bulletins_controller_test'

class HexletCheckTest < ActiveSupport::TestCase


  test 'Bulletins fixtures not empty' do
    assert { Bulletin.all.any? }
  end
end
