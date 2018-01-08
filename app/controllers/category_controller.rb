require 'json'

class CategoryController < ApplicationController

  # カテゴリーの一覧を表示する
  def list
	@data = params['id']
	if @data != nil then
		redirect_to  action:'subject', id: @data
		return
	end
	puts "\n"+ sprintf( " => %s(%d)",__FILE__.split("/").last,__LINE__)
	@data = Category.all
  end

  # 指定されたカテゴリーから、製品一覧を表示する
  def subject
	id = params['id']
	if id == nil then
		redirect_to action:'list'
		return
	end
	@data = Category.find(id.to_i)
	@items = set_item_page_data @data.name, 20, params['page']

	puts "\n"+ sprintf( " ============= %s(%d) =============",__FILE__.split("/").last,__LINE__)
	# pp @items[0]
  end

  private

  # nameのカテゴリから、
  # データの更新された順番で配列を取得し
  # limitの数だけpageに応じたデータを返します
  def set_item_page_data name, limit, page
	items = Furniture.where("category like ?", name)
		.order('updated_at DESC')

	# 指定されたページのパラメータから、
	# エラーの可能性を除去します
	if page == nil || page < 0  then
		page = 0
	end
	page = page.floor

	# データがあれば返却し、なければ空配列を返却します
	ret =  items.limit(limit).offset(page * limit)



	if ret != nil then
		return ret
	end
	return []
  end

end
