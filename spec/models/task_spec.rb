require 'rails_helper'

RSpec.describe 'タスクモデル機能', type: :model do
  describe 'バリデーションのテスト' do
    context '貯蓄品の名称が空文字の場合' do
      it 'バリデーションに失敗する' do
        stockitem = Stockitem.create(name: '', quantity: '1')
        expect(stockitem).not_to be_valid
      end
    end

    context 'タスクの数量が空文字の場合' do
      it 'バリデーションに失敗する' do
        stockitem = Stockitem.create(name: '缶詰', quantity: '')
        expect(stockitem).not_to be_valid
      end
    end

    context '購入日が空文字の場合' do
      it 'バリデーションに失敗する' do
        stockitem = Stockitem.create(name: '缶詰', quantity: '1', purchase_date: '')
        expect(stockitem).not_to be_valid
      end
    end

    context '全ての値が入っている場合' do
      it '貯蓄品を登録できる' do
        stockitem = Stockitem.create(name: '缶詰', quantity: 1, purchase_date: '2024-02-02', expiration_date: '2025-02-02')
        expect(stockitem).to be_valid
      end
    end
  end
end