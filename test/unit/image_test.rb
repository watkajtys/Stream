require 'test_helper'

class ImageTest < ActiveSupport::TestCase
   test "url is required" do
      image = Image.new
      assert_false(image.save)
   end
end
