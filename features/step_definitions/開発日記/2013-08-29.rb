# coding: UTF-8

もし /^(.*?) からインストーラをダウンロード$/ do |url|
  visit url
  capture
end

もし /^インストーラを実行$/ do |string|
end

もし /^モジュール (.*?) をインストール$/ do |module_name, string|
end

もし /^expressのひな形を作成$/ do |string|
end

もし /^依存モジュールをインストール$/ do |string|
end

もし /^アプリを起動$/ do |string|
end
