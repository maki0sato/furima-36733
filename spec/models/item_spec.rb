require 'rails_helper'

RSpec.describe Item, type: :model do
  before do
    @item = FactoryBot.build(:item)
    @item.image = fixture_file_upload('app/assets/images/comment.png')
  end

  describe '商品出品機能' do
    context '商品を出品できる時' do
      it 'フォームを正しく入力し画像を添付できていれば出品できる' do
        expect(@item).to be_valid
      end
    end
  end


end
