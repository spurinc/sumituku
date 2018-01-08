class FurnituresController < ApplicationController
  before_action :set_furniture, only: [:show, :edit, :update, :destroy]
# 家具周りのコントローラー
  # GET /furnitures
  # GET /furnitures.json
  
  # トップページ
  def index
      @furnitures = Furniture.search(params[:search]).order(created_at: :desc)
  end

  #検索機能
  def search
    #ViewのFormで取得したパラメータをモデルに渡す
    @furnitures = Furniture.search(params[:search])
  end

  # GET /furnitures/1
  # GET /furnitures/1.json
  # 家具の詳細画面
  def show
    @user = User.find_by(id: @furniture.user_id)
  end

  # GET /furnitures/new
  # 新しく家具を登録する画面
  def new
    @furniture = Furniture.new
  end

  # GET /furnitures/1/edit
  # 家具情報を編集する画面
  def edit
  end

  # POST /furnitures
  # POST /furnitures.json
  # 家具情報をモデルに登録
  def create
    @furniture = Furniture.new(furniture_params)
    # user_id: current_user.id
    respond_to do |format|
      if @furniture.save
        format.html { redirect_to @furniture, notice: 'Furniture was successfully created.' }
        format.json { render :show, status: :created, location: @furniture }
      else
        format.html { render :new }
        format.json { render json: @furniture.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /furnitures/1
  # PATCH/PUT /furnitures/1.json
  # 家具情報のモデルを編集
  def update
    respond_to do |format|
      if @furniture.update(furniture_params)
        format.html { redirect_to @furniture, notice: 'Furniture was successfully updated.' }
        format.json { render :show, status: :ok, location: @furniture }
      else
        format.html { render :edit }
        format.json { render json: @furniture.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /furnitures/1
  # DELETE /furnitures/1.json
  def destroy
    @furniture.destroy
    respond_to do |format|
      format.html { redirect_to furnitures_url, notice: 'Furniture was successfully destroyed.' }
      format.json { head :no_content }
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    # 家具情報を@furnitureに挿入
    def set_furniture
      @furniture = Furniture.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    # 家具情報で挿入されるカラム
    def furniture_params
      params.require(:furniture).permit(:name, :category, :furniture_image,:furniture_about,:price,:kodawari_img,:kodawari_point,:kodawari_about,:size,:delivery,:user_id,:Deliverystatus)
    end
end
