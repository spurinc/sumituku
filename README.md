# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

# SUMITUKU

## Ruby version
2.4.0

## Rails version
5.1.4

## Desicription
 sumitukuは、こだわり家具に特化した、ECプラットフォームです。物販ビジネスの新しい潮流であるD2C(Direct To Consumer)モデルを採用し、家具の製作者であるクリエイターからsumitukuを通じて、ユーザーはこだわり家具を簡単・手軽に購入することができます。


## models

#### Userモデル
 ["id", "email", "encrypted_password", "reset_password_token", "reset_password_sent_at", "remember_created_at", "sign_in_count", "current_sign_in_at", "last_sign_in_at", "current_sign_in_ip", "last_sign_in_ip", "confirmation_token", "confirmed_at", "confirmation_sent_at", "unconfirmed_email", "failed_attempts", "unlock_token", "locked_at", "created_at", "updated_at", "provider", "uid", "username", "prof_img", "creator_buyer"]

→よく使うのは、email,password,username,prof_img,creator_buyer(作りか買い手か)。
全てstring型

#### Furnitureモデル
 ["id", "name", "category", "furniture_image", "created_at", "updated_at", "price", "furniture_about", "kodawari_img", "kodawari_point", "kodawari_about", "size", "delivery", "user_id"]

→about,size,deliveryはtext,
price,id,user_idはinteger,
それ以外はstring

dm/mifgarate以下のフォルダからも確認できます。


## controllers

#### furnitures_controller.rb
→家具の登録、編集、表示など家具周りのコントローラー


#### omniauth_callbacks_controller.rb
→omniauthのgemにより生成される。twitterログインを行なっている、

#### homes_controller.rb
→userのマイページやMyProductページを表示させている。

#### products_controller.rb
→payjpのgemにより作成



## views

#### deviseディレクトリ
ログインやサインアップなどのフォーム。
よく使うのは
###### registraions
 →サインアップおよび、ユーザー情報編集フォーム

###### sessions
 →ログインフォーム

###### shared
 →SNSログインのフォーム


#### furnitures

###### index.html.erb
現在のtopページを表示

###### show.html.erb
家具の詳細ページを表示

###### new.html.erb
家具の新規作成ページを表示

###### edit.html.erb
家具の情報編集ページを表示

###### search.html.erb
家具の検索結果ページを表示

###### _form.html.erb
家具の情報入力フォームのパーシャル


#### homes

###### show.html.erb
ユーザーのマイページ

###### show.html.erb
ユーザーの家具一覧ページ


#### layouts

###### application.html.erb
headerとfooterの共通部分

#### products
payjpで追加されたもの

