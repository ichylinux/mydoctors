# coding: UTF-8

もし /^(.*?) からアカウント作成$/ do |url|
  visit url
  capture
end

もし /^Rubyをインストール$/ do
end

もし /^CloundFoundry用のツールをインストール$/ do |string|
end

もし /^デプロイ構成を管理する (.*?) を作成$/ do |file|
  show file, :as => 'new'
end

もし /^デプロイ先のターゲットを設定$/ do |string|
end

もし /^ログイン$/ do |string|
end

もし /^アプリをPUSH$/ do |string|
end
