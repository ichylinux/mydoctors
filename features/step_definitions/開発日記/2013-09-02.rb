# coding: UTF-8

もし /^Rubyをインストール$/ do
end

もし /^Gemfileを作成し、gem cf を設定$/ do
  show 'Gemfile', :as => 'new', :to => 5
end

もし /^sudo bundle install$/ do
  show 'Gemfile.lock', :as => 'new', :from => 199, :to => 200
end
