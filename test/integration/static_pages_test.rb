# require 'test_helper'
require File.expand_path("../../test_helper", __FILE__)

class StaticPagesTest < ActionDispatch::IntegrationTest
  test "the truth" do
    assert true
  end

  describe "Home page" do
    it "should have content 'template app'" do
      visit '/static_pages/home'
      page.should have_content('template app')
    end
  end
end