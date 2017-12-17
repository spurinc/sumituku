class ProductsController < ApplicationController

# 決済周りのコントローラー
  def index
  end

  # 支払い(payjpのgem利用)
  def pay
      Payjp.api_key = 'sk_test_cc91d96481d6fb77a9ef7f0f'
      charge = Payjp::Charge.create(
      :amount => 3500,
      :card => params['payjp-token'],
      :currency => 'jpy',
  )
end
  end
