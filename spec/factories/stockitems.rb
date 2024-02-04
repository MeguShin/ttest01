# 「FactoryBotを使用します」という記述
FactoryBot.define do
    # 作成するテストデータの名前を「task」とします
    # 「task」のように存在するクラス名のスネークケースをテストデータ名とする場合、そのクラスのテストデータが作成されます
    factory :stockitem do
      name { '缶詰' }
      quantity { '2' }
      purchase_date { '2024-02-02' }
      expiration_date { '2025-02-02' }
    end
    # 作成するテストデータの名前を「second_task」とします
    # 「second_task」のように存在しないクラス名のスネークケースをテストデータ名とする場合、`class`オプションを使ってどのクラスのテストデータを作成するかを明示する必要があります
    factory :second_item, class: Stockitem do
        name { '水' }
        quantity { '5' }
        purchase_date { '2024-02-02' }
        expiration_date { '2025-02-02' }
    end
  end