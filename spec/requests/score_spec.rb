require 'rails_helper'

describe 'Score API', type: :request do
  let(:platform) { create(:platform)}
  let(:user) { create(:user, platform_id: platform.id) }

  describe "Get /users/:id/scores" do
    before do
      user.scores.create(score: 1000)
      user.scores.create(score: 2000)
      get "/users/#{user.id}/scores"
    end

    it '200 OK が返ってくる' do
      expect(response).to be_success
      expect(response.status).to eq(200)
    end

    it 'Scoreの一覧を取得する', autodoc: true do
      expect(response.status).to eq(200)
    end
  end

  describe "POST /users/:id/scores" do
    before do
      score_attributes = {score: {score: 1000}}
      post "/users/#{user.id}/scores", score_attributes
    end

    it 'Scoreを新規作成する', autodoc: true do
      expect(response).to be_success
      expect(response.status).to eq(201)
    end
  end
end
