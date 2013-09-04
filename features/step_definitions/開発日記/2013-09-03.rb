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
