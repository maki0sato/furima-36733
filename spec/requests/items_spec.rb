require 'rails_helper'

describe ItemsController, type: :request do

  before do
    @item = FactoryBot.create(:item)
  end

  describe "GET #index" do
    it 'indexアクションにリクエストすると正常なレスポンスが帰ってくる' do
      get root_path
      expect(response.status).to eq 200
    end
  end
end
