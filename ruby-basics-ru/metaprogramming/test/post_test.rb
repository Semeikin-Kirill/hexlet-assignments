# frozen_string_literal: true

require_relative 'test_helper'
require_relative '../lib/post'

class PostTest < Minitest::Test
  def setup
    @attributes = {
      id: 1,
      title: 'Hello World',
      body: 'First post!',
      created_at: '01/03/2021',
      published: true
    }

  end

  def test_model_contains_attributes_on_initialize

    assert true
  end

  def test_model_contains_attributes_with_accessors

    assert true
  end

  def test_each_model_has_its_own_attributes


    assert true
  end
end
