# README

# アプリケーション名
shine-35553

# アプリケーション概要
自身の目標を明確にすることができ、内容を投稿することができる。<br>
他のユーザーの目標を閲覧することができる。

# 工夫したポイント
私の人柄を全面に出したこと。<br>
テックキャンプで学んだ7つのアクションをフル活用したこと<br>
自力で調べて非同期で、いいね機能実装を実装したこと。

# 課題
検索力の向上<br>
経験、知識<br>
if文を使用した条件分岐スキル

# 今後実装したい機能
コメント機能の実装<br>
目標が達成後、完了ボタンを押すと、色が変化する、達成日付が反映されるなどの機能実装。

# デプロイ済みのURL
https://shine-35553.herokuapp.com/

# テスト用アカウント
emil:  a@a<br>
password: 11111a<br>
emil:  p@p<br>
password: 11111p

# 利用方法
アプリケーションにアクセス後、新規登録かログインを行う。<br>
自身の目標を保存し、日々確認する。<br>
過去の自身の投稿も一覧で確認でき、他のユーザーの目標も閲覧できる。

# 制作背景(意図)
何となく毎日を生きている、心にモヤモヤを抱えている人が、私を含め周りに多かった。<br>
皆がやりたいことを実現し、私と関わる全ての人が輝いている姿を見たいと思った。<br>
一歩踏み出せるアプリ、踏み出した後に挫折しないアプリの作成を目指した。

# 要件定義
|優先順位
（高：3、中：2、低：1）| 機能 | 目的 | 詳細 | ストーリー(ユースケース) | 見積もり（所要時間）|
|-------------------|-----|-----|------|----------------------|------------------|									
| 3	                | 目標入力機能  |	目標入力する機能を実装するため。|	入力フォームを10個作成	ログインしているユーザーのみ入力可能であり、    | ログインしていない場合は、ログインページに遷移する。 	|	1日|
|3	|         新規登録機能	  |新規登録機能を実装するため。ユーザー情報を取得するため。	|nickname、メールアドレス、パスワードを全て入力すれば保存できる。既に存在するメールアドレスは登録できない。パスワードは、半角英数字混合かつ6文字以上という制限がある。登録が上手く行かない場合は、新規登録ページでとどまる。新規登録の際に不備があった場合、エラーメッセージが表示される。	|トップページにアクセス後、アプリケーションを利用しようとすると、新規登録かログインが必要にな る。新規登録は最初に必ず実施する。	|1日	|	
|3	|ログイン機能	|ログイン機能を実装するため。| ログインしているか否かで使用できる機能を区別するため。	|メールアドレスとパスワードを入力し、登録している内容と一致した時ログインすることができる。目標入力機能や、目標詳細ページに遷移しようとする時にログインが必要となる。ログインしていない場合、ログインページに遷移する |	1日 |
|3	| ログアウト機能 |ログアウトするため。|	ログインしているユーザーにのみ、ログアウトボタンが表示される。ログアウトボタンを押すことで、ログアウトが完了し、トップページに遷移する。|	ログアウトしたい時にログアウトする。|	1日	|										
|3 |	編集機能	|入力した内容を変更したい時、変更できるようにするため。|	目標詳細ボタンを押した時、詳細ページで投稿者本人であれば、編集ボタンが表示される。編集ボタンを押すと編集ページに遷移し、編集することができる。|	投稿者本人が、入力内容を変更したいと思った時に編集する。|	1日	|					
|3|更新機能	|入力内容を編集し、その内容を保存し、更新するため。|	編集ページにて、編集後、[天才の人のみ押せるボタンを押す]と変更内容が更新される。編集内容に不備[空欄]があった場合は、更新できず、編集ページにとどまる	編集と更新はセットで使用。|編集した内容を反映したい場合に更新する。編集内容に不備[空欄]などがあれば更新できない。|	1時間		|				
|3	|削除機能	|投稿している内容を削除できるようにするため。|	投稿者本人であれば詳細ページに遷移した際に、削除ボタンが表示される。削除ボタンを押すと、削除完了となる。また、削除する際に、[削除しますか]といったアラートが表示され、誤って削除してしまわないように二段階としている。|	ユーザーが入力情報を削除したいと思った時に削除することができる。その際にアラートが表示されるため、誤って削除してしまうのを防いでいる。|	1時間				|														
|3	|詳細機能	|詳細ページで投稿内容を確認、編集、削除などユーザーのつぎのアクションを決めれるようにするため。|	トップページの投稿一覧画面で、目標詳細というボタンを押すと、詳細ページに遷移する。投稿者本人の詳細であれば、過去に投稿した内容の一覧を降順で表示させ、編集、削除のボタンを表示する。投稿者以外のユーザーが目標詳細のボタンを押した場合は、投稿されている内容のみが表示される。|	投稿者本人であれば、過去にどんな入力をしたか確認することができる。編集、削除を行いたい場合にも必ず詳細ページに遷移している。投稿者以外であれば、一つの投稿のみ表示される。|	1日													|					
|2	|一覧表示機能	|他者の投稿を閲覧できるようにするため。他社の投稿にいいねをできるようにするため。|	目標入力機能で入力した内容の全てを、降順でトップページに表示させる。一覧表示では、他者の投稿内容も全て閲覧することができる。一覧表示で、いいねを非同期通信で行うことができる。|	自分以外のユーザーがどんな夢や目標があるのか知りたいとき、トップページで閲覧可能。その際にいいねを押すことができる。|	1日			|
|2 |	いいね機能 |	ユーザーにいいねをする[してもらう]ことにより、モチベーションupに繋げるため。|	トップページの一覧表示、詳細ページにていいねができる。非同期通信で実装している。いいねが押されているときは、ピンク色になり、押されていない状態では、グレーになる。良いねは、一人1カウントづつできる。いいねしたボタンを再度クリックすることでいいねの解除も可能。|	他者の投稿、自身の投稿に対して、気に入ったことを表現したい場合に、トップページの一覧表示、詳細ページからいいねが可能。間違っていいねしてしまっても、再度ボタンを押すことで解除が可能。|	2日																	|	
|2 |	Font Awesome導入|	いいねをクリックする際に、文字ではなくアイコン表示にするため。|	いいねをする時、文字や、リンクではなくハートのアイコンを押すことによりカウントされる。|	ユーザーがいいねを実行する時にハートのボタンを押す。|	1時間																			|

# 実装した機能についての画像やGIFおよびその説明
# 目標入力機能の実装
[![Image from Gyazo](https://i.gyazo.com/2e949873b695a6d4e4e70bcaeede8c26.gif)](https://gyazo.com/2e949873b695a6d4e4e70bcaeede8c26)
# 新規登録機能の実装
[![Image from Gyazo](https://i.gyazo.com/73d71f96b6b5f80f9aae0f89d36e5c68.gif)](https://gyazo.com/73d71f96b6b5f80f9aae0f89d36e5c68)
# ログイン機能の実装
[![Image from Gyazo](https://i.gyazo.com/959948b00ff7af9548b15b2052f733d0.gif)](https://gyazo.com/959948b00ff7af9548b15b2052f733d0)
# ログアウト機能の実装
[![Image from Gyazo](https://i.gyazo.com/968403ca144ef2f35ad7e57d75f64120.gif)](https://gyazo.com/968403ca144ef2f35ad7e57d75f64120)
# 編集した内容を更新できる
[![Image from Gyazo](https://i.gyazo.com/122858c18406957abee269fb535c9e1f.gif)](https://gyazo.com/122858c18406957abee269fb535c9e1f)
# 削除機能の実装
[![Image from Gyazo](https://i.gyazo.com/3327dcee527ef08cc5a779a47d7bfb52.gif)](https://gyazo.com/3327dcee527ef08cc5a779a47d7bfb52)
# 詳細表示機能の実装
### 投稿者以外のユーザーが目標詳細押した時
[![Image from Gyazo](https://i.gyazo.com/b8c0174910c956be8e955b3d9d23c8ce.gif)](https://gyazo.com/b8c0174910c956be8e955b3d9d23c8ce)
### 投稿者本人が目標詳細押した時
[![Image from Gyazo](https://i.gyazo.com/fc180a6e30a9eec0c691bdcb694c4584.gif)](https://gyazo.com/fc180a6e30a9eec0c691bdcb694c4584)

# 一覧表示機能の実装
[![Image from Gyazo](https://i.gyazo.com/34146860eef421307ce82debad5d4bb2.gif)](https://gyazo.com/34146860eef421307ce82debad5d4bb2)
# いいね機能の実装
[![Image from Gyazo](https://i.gyazo.com/75e32c3abb877e1ec98be8c3823d4763.gif)](https://gyazo.com/75e32c3abb877e1ec98be8c3823d4763)
# モデルの単体テストコードの実装
### userモデルのテストコード実装
[![Image from Gyazo](https://i.gyazo.com/c3a2ba3f21656ec561b5126e5d9b04d2.png)](https://gyazo.com/c3a2ba3f21656ec561b5126e5d9b04d2)
### textモデルのテストコード実装
[![Image from Gyazo](https://i.gyazo.com/de8f9dcccf8115faff3a9882d55ae4ef.png)](https://gyazo.com/de8f9dcccf8115faff3a9882d55ae4ef)

# データベース設計
[![Image from Gyazo](https://i.gyazo.com/26eed405e9b94a492d14443df1b4ce92.png)](https://gyazo.com/26eed405e9b94a492d14443df1b4ce92)

# ローカルでの動作方法
git cloneしてから<br>
% bundle install<br>
% yarn install<br>
% rails db:create<br>
% rails db:migrate<br>
% rails s

# パッケージ
source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.5'


gem 'rails', '~> 6.0.0'

gem 'mysql2', '>= 0.4.4'

gem 'puma', '~> 3.11'

gem 'sass-rails', '~> 5'

gem 'webpacker', '~> 4.0'

gem 'turbolinks', '~> 5'

gem 'jbuilder', '~> 2.7'


gem 'bootsnap', '>= 1.4.2', require: false

group :development, :test do
  
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'rspec-rails'
  gem 'factory_bot_rails'
  gem 'faker'
end

group :development do
 
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
 
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'rubocop', require: false
end

group :test do

  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  
  gem 'webdrivers'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
gem 'devise'
gem 'pry-rails'

## users テーブル

| Column               | Type   | Options                   |
| --------             | ------ | -----------               |  
| nickname             | string | null: false               |
| email                | string | null: false, unique: true |
| encrypted_password   | string | null: false               |



### Association

- has_many :texts
- has_many :likes


# texts テーブル

| Column  | Type       |  Options                       |
| --------| ------     | -----------                    |
| one     | string     |  null: false                   |
| two     | string     |  null: false                   | 
| three   | string     |  null: false                   |
| four    | string     |  null: false                   |
| five    | string     |  null: false                   |
| six     | string     |  null: false                   |
| seven   | string     |  null: false                   |
| eight   | string     |  null: false                   |
| nine    | string     |  null: false                   |
| ten     | string     |  null: false                   |
| user    | references |  null: false, foreign_key: true|
### Association

- belongs_to :user
-has_many :likes


## likes テーブル

| Column        | Type       | Options                        |
| --------      | ------     | -----------                    |  
| user          | references |  null: false, foreign_key: true|
| text          | references |  null: false, foreign_key: true|

### Association

- belongs_to :user
- belongs_to :text


