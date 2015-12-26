require 'rails_helper'

describe 'Users API', type: :request do
  let(:platform) { @platform = create(:platform) }

  describe "Get /users" do
    before do
      create(:user, platform_id: platform.id)
      create(:user, name: "たかし", platform_id: platform.id)
      get "/users"
    end

    it '200 OK が返ってくる', autodoc: true do
      expect(response).to be_success
      expect(response.status).to eq(200)
    end
  end

  describe "POST /users" do
    before do
      user_attributes = {user: {name: "テスト 太郎", platform_id: platform.id}}
      post "/users", user_attributes
    end

    it '201 OK が返ってくる', autodoc: true do
      expect(response).to be_success
      expect(response.status).to eq(201)
    end
  end
end
