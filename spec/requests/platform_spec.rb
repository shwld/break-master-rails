require 'rails_helper'

describe 'Platform API', type: :request do
  describe "Get /platforms" do
    before do
      @platform1 = create(:platform)
      @platform2 = create(:platform_swordmaster)
      get "/platforms"
    end

    it '200 OK が返ってくる' do
      expect(response).to be_success
      expect(response.status).to eq(200)
    end

    it 'Platformの一覧を取得する', autodoc: true do
      expect(response.body).to match(/#{@platform1.title}/)
    end
  end

  describe "POST /platforms" do
    before do
      platform_attributes = {platform: {title: "ブレインブレイカーたかしの集中", description: "概要が入ります", url: "http://example.com/"}}
      post "/platforms", platform_attributes
    end

    it 'Platformを新規登録する', autodoc: true do
      expect(response).to be_success
      expect(response.status).to eq(201)
    end
  end
end
