require 'test_helper'

class BookListItemsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get book_list_items_index_url
    assert_response :success
  end

end
