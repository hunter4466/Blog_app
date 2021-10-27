require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    get users_index_url
    assert_response :success
    expect(page.html).to include("<h1>Displays a list of users</h1>")
  end
end
