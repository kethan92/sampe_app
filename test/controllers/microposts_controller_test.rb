require 'test_helper'

class MicropostsControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  include ApplicationHelper

  def setup
    @micropost = microposts(:orange)
    # debugger
  end
end
