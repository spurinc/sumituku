class CategoryController < ApplicationController

  # カテゴリーの一覧を表示する
  def list
	@data = params['id']
	if data != nil then
		redirect_to action: subject
	end
  end

  # 指定されたカテゴリーから、製品一覧を表示する
  def subject
	@data = params['id']
	if data == nil then
		redirect_to action: list
	end
  end

end
