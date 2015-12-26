require 'rails_helper'

describe 'Users API', type: :request do
  let(:platform) { create(:platform) }

  describe "Get /users" do
    before do
      create(:user, platform_id: platform.id)
      @user = create(:user, name: "たかし", platform_id: platform.id)
      get "/users"
    end

    it '200 OK が返ってくる' do
      expect(response).to be_success
      expect(response.status).to eq(200)
    end

    it 'Userの一覧を取得する', autodoc: true do
      expect(response.body).to match(/#{@user.name}/)
    end
  end

  describe "POST /users" do
    before do
      user_attributes = {user: {name: "テスト 太郎", platform_id: platform.id}}
      post "/users", user_attributes
    end

    it 'Userを新規作成する', autodoc: true do
      expect(response).to be_success
      expect(response.status).to eq(201)
    end
  end
end
