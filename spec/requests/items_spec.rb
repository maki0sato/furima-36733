require 'rails_helper'

describe ItemsController, type: :request do
  before do
    @item = FactoryBot.create(:item)
  end

  describe 'GET #index' do
    it 'indexアクションにリクエストすると正常なレスポンスが帰ってくる' do
      get root_path
      expect(response.status).to eq 200
    end

    it 'indexアクションのレスポンス内に出品された商品の画像が表示されている' do
      get root_path
      expect(response.body).to include(url_for(@item.image))
    end

    it 'indexアクションのレスポンス内に出品された商品の名前が表示されている' do
      get root_path
      expect(response.body).to include(@item.item)
    end

    it 'indexアクションのレスポンス内に出品された商品の送料負担が表示されている' do
      get root_path
      expect(response.body).to include(@item.delivery_free[:name])
    end

    it 'indexアクションのレスポンス内に出品された商品の価格が表示されている' do
      get root_path
      expect(response.body).to include(@item.price.to_s)
    end
  end
end
