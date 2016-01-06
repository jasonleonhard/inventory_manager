#!/usr/bin/env ruby
require 'minitest/autorun'
require_relative '../lib/menu'

class TestMenu < MiniTest::Test

  def setup
    @menu = Menu.new
  end

  def test_menu_is_nil
    assert @menu, nil
  end

  def test_show_JSON_responds
    assert_respond_to @menu, :show_JSON
  end

  def call
    @menu.filename
  end

  def test_call_responds
    self.call
  end
end
