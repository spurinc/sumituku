class ProductsController < ApplicationController
  def index
    end

  def pay
      Payjp.api_key = 'sk_test_cc91d96481d6fb77a9ef7f0f'
      charge = Payjp::Charge.create(
      :amount => 3500,
      :card => params['payjp-token'],
      :currency => 'jpy',
  )
end
end
