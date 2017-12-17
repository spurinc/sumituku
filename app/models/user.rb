class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  # devise :database_authenticatable, :registerable,
         # :recoverable, :rememberable, :trackable, :validatable

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :lockable, :timeoutable, :omniauthable,
          omniauth_providers: [:twitter]
  
  # ユーザーのプロフィール画像を保存できるように
  mount_uploader :prof_img, ImageUploader

# 以下はgem deviseの仕様です

  # gem omniauthを利用
  def self.from_omniauth(auth)
    find_or_create_by(provider: auth["provider"], uid: auth["uid"]) do |user|
      user.provider = auth["provider"]  #twitterからのログイン情報と取得
      user.uid = auth["uid"] #idを保存
      user.username = auth["info"]["nickname"] #twitterからユーザー名を取得
      user.prof_img = user.uid+"jpg" #twitterから画像を保存
    end
  end

  def self.new_with_session(params, session)
    if session["devise.user_attributes"]
      new(session["devise.user_attributes"]) do |user|
        user.attributes = params
      end
    else
      super
    end
  end

   # allow users to update their accounts without passwords
  def update_without_current_password(params, *options)
    params.delete(:current_password)
 
    if params[:password].blank? && params[:password_confirmation].blank?
      params.delete(:password)
      params.delete(:password_confirmation)
    end
 
    result = update_attributes(params, *options)
    clean_up_passwords
    result
  end


end
