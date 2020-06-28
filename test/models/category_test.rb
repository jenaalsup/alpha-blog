require 'test_helper'

# tags for artciles
class CategoryTest < ActiveSupport::TestCase
 
  test "category should be valid" do
    @category = Category.new(name: "Sports")
    assert @category.valid?
  end

end