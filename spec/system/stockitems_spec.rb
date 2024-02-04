require 'rails_helper'

RSpec.describe 'タスク管理機能', type: :system do
  describe '登録機能' do
    context 'タスクを登録した場合' do
      it '登録したタスクが表示される' do
        FactoryBot.create(:stockitem)
        visit stockitems_path
        # binding.irb
        expect(page).to have_content '缶詰'
      end
    end
  end

  describe '一覧表示機能' do
    context '一覧画面に遷移した場合' do
      it '登録済みのタスク一覧が表示される' do
        # Stockitem.create!(name: '缶詰', quantity: '1', purchase_date: '2024-02-02', expiration_date: '2025-02-02')
        FactoryBot.create(:stockitem)
        visit stockitems_path
        # binding.irb
        expect(page).to have_content '缶詰'
      end
    end
  end

  describe '詳細表示機能' do
     context '任意のタスク詳細画面に遷移した場合' do
       it 'そのタスクの内容が表示される' do
        item = FactoryBot.create(:second_item)
        visit stockitems_path(item)
        expect(page).to have_content '水'
       end
     end
  end
end