require 'rails_helper'

RSpec.describe 'List al the posts', type: :request do
  describe 'GET /users' do
    it 'Returns a chains of a different succesful actions' do
      get('/users')
      expect(response).to have_http_status(:ok)
      expect(response).to render_template(:index)
      expect(response.body).to include('Displays a list of users')
    end
  end

  describe 'Get profile and posts for a given ID' do
    it 'Returns a chains of a different succesful actions' do
      get('/users/5')
      expect(response).to have_http_status(:ok)
      expect(response).to render_template(:show)
      expect(response.body).to include('Displays a user and its posts with a given ID')
    end
  end
end
