# coding: UTF-8

もし /^MongoDBをインストール$/ do |string|
end

もし /^MongDBを起動$/ do |string|
end

もし /^MongoDBドライバーをインストール$/ do |string|
end

もし /^パッケージ構成を修正$/ do
  git_diff 'package.json'
end

もし /^パッケージを更新$/ do |string|
end

もし /^モデルを作成$/ do
  show 'models/rating.js', :as => 'new'
end

もし /^コントローラを修正$/ do
  git_diff 'routes/index.js'
end

もし /^ビューを修正$/ do
  git_diff 'views/index.ejs'
  show 'views/ratings/_form.ejs', :as => 'new'
  show 'views/ratings/_index.ejs', :as => 'new'
end
