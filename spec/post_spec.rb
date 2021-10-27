require 'rails_helper'

RSpec.describe 'Status Requests', type: :request do
  describe 'GET /users/:id/posts' do
    it 'returns a correct action' do
      get('/users/123/posts')
      expect(response).to have_http_status(:ok)
      expect(response).to render_template(:index)
      expect(response.body).to include('Shows user name and list of posts for a given id')
    end
  end

  describe 'GET /users/:user_id/posts/:id' do
    it 'returns a correct action' do
      get('/users/123/posts/456')
      expect(response).to have_http_status(:ok)
      expect(response).to render_template(:show)
      expect(response.body).to include('Displays post with respectives comments')
    end
  end
end
